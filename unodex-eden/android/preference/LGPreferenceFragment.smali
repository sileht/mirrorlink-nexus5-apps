.class public Landroid/preference/LGPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "LGPreferenceFragment.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPackageContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Landroid/preference/LGPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    .line 98
    const/4 v3, 0x3

    .line 97
    :try_start_1
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/preference/LGPreferenceFragment$1;

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    invoke-direct {v1, p0, v0, v3, p1}, Landroid/preference/LGPreferenceFragment$1;-><init>(Landroid/preference/LGPreferenceFragment;Landroid/content/Context;ILandroid/content/Context;)V

    .line 116
    .end local v0    # "ctx":Landroid/content/Context;
    .local v1, "ctx":Landroid/content/Context;
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    .line 117
    return-object v1

    .line 118
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_14
    move-exception v2

    .line 119
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create package context for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 120
    const-string v5, ": make sure the package is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-direct {v3, v4, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 152
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 154
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v4, v0

    if-lt v2, v4, :cond_26

    .line 163
    :goto_11
    sget-object v4, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPackageName(), packageName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object v3

    .line 155
    :cond_26
    aget-byte v4, v0, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_37

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    const/4 v4, 0x3

    if-ne v1, v4, :cond_37

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 159
    goto :goto_11

    .line 154
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .registers 5
    .param p1, "preferencesResId"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_21

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":This should be called after super.onCreate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_21
    iget-object v0, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_37

    .line 174
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/LGPreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 180
    :goto_36
    return-void

    .line 179
    :cond_37
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_36
.end method

.method public addViewToBreadCrumb(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/preference/LGPreferenceFragment;->addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 259
    return-void
.end method

.method public addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 215
    if-nez p1, :cond_a

    .line 216
    sget-object v4, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_9
    return-void

    .line 220
    :cond_a
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, "window":Landroid/view/View;
    const-string v4, "tag_settings_breadcrumb_extra"

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 221
    check-cast v1, Landroid/view/ViewGroup;

    .line 224
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_28

    .line 225
    sget-object v4, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:parentView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 229
    :cond_28
    if-nez p2, :cond_3c

    .line 230
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    const/4 v4, -0x2

    const/4 v5, -0x1

    .line 230
    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    move-object p2, v0

    .line 237
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    const-string v4, "myView"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 240
    .local v2, "vp":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4c

    .line 241
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_4c
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->removeViewFromBreadCrumb()V

    .line 246
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 198
    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 199
    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 200
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 203
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/preference/PreferenceFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 185
    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 186
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 189
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getPackageContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 61
    iget-object v0, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 63
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_6
.end method

.method public isRemoteFragment()Z
    .registers 4

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 297
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "remote_package_name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 299
    const/4 v2, 0x1

    .line 302
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :goto_f
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 136
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "remote_package_name":Ljava/lang/String;
    iget-object v2, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 138
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/preference/LGPreferenceFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 142
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 143
    iget-object v2, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_41

    .line 144
    invoke-direct {p0}, Landroid/preference/LGPreferenceFragment;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "remote_package_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/preference/LGPreferenceFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 147
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method public removeViewFromBreadCrumb()V
    .registers 6

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 269
    .local v2, "window":Landroid/view/View;
    const-string v3, "tag_settings_breadcrumb_extra"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 268
    check-cast v1, Landroid/view/ViewGroup;

    .line 271
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1e

    .line 272
    sget-object v3, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:parentView is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1d
    :goto_1d
    return-void

    .line 276
    :cond_1e
    const-string v3, "myView"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "myView":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 280
    sget-object v3, Landroid/preference/LGPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:view is removed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v1, :cond_1d

    .line 282
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method public setPackageContext(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/preference/LGPreferenceFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0, p3}, Landroid/preference/LGPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iget-object v1, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_26

    .line 79
    invoke-virtual {p0}, Landroid/preference/LGPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_18

    .line 81
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_18
    const-string v1, "arg_package_name"

    iget-object v2, p0, Landroid/preference/LGPreferenceFragment;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/preference/LGPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    return-void
.end method
