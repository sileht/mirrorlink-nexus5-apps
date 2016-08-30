.class public Landroid/app/LGFragment;
.super Landroid/app/Fragment;
.source "LGFragment.java"


# static fields
.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "arg_package_name"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_BREADCRUMB_MY_VIEW:Ljava/lang/String; = "myView"

.field public static final TAG_SETTINGS_BREADCRUMB_EXTRA:Ljava/lang/String; = "tag_settings_breadcrumb_extra"


# instance fields
.field private mPackageContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Landroid/app/LGFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 94
    .line 96
    const/4 v3, 0x3

    .line 95
    :try_start_1
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/app/LGFragment$1;

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    invoke-direct {v1, p0, v0, v3, p1}, Landroid/app/LGFragment$1;-><init>(Landroid/app/LGFragment;Landroid/content/Context;ILandroid/content/Context;)V

    .line 114
    .end local v0    # "ctx":Landroid/content/Context;
    .local v1, "ctx":Landroid/content/Context;
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    .line 116
    return-object v1

    .line 117
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_14
    move-exception v2

    .line 118
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create package context for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 119
    const-string v5, ": make sure the package is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
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
    sget-object v4, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

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
.method public addViewToBreadCrumb(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/LGFragment;->addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 243
    return-void
.end method

.method public addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 200
    if-nez p1, :cond_a

    .line 201
    sget-object v4, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_9
    return-void

    .line 205
    :cond_a
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 206
    .local v3, "window":Landroid/view/View;
    const-string v4, "tag_settings_breadcrumb_extra"

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_28

    .line 209
    sget-object v4, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:parentView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 213
    :cond_28
    if-nez p2, :cond_3c

    .line 214
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    const/4 v4, -0x2

    const/4 v5, -0x1

    .line 214
    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    move-object p2, v0

    .line 221
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    const-string v4, "myView"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 224
    .local v2, "vp":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4c

    .line 225
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    :cond_4c
    invoke-virtual {p0}, Landroid/app/LGFragment;->removeViewFromBreadCrumb()V

    .line 230
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 183
    iget-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 184
    iget-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 188
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    iget-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 170
    iget-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 174
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getPackageContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 59
    iget-object v0, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    .line 61
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_6
.end method

.method public isRemoteFragment()Z
    .registers 4

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/app/LGFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 278
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 279
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "remote_package_name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 281
    const/4 v2, 0x1

    .line 284
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
    .line 125
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/LGFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 135
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "remote_package_name":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 137
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/app/LGFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    .line 141
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 142
    iget-object v2, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_41

    .line 143
    invoke-direct {p0}, Landroid/app/LGFragment;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "remote_package_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/app/LGFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    .line 147
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method public removeViewFromBreadCrumb()V
    .registers 6

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/app/LGFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "window":Landroid/view/View;
    const-string v3, "tag_settings_breadcrumb_extra"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 253
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1e

    .line 254
    sget-object v3, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:parentView is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1d
    :goto_1d
    return-void

    .line 258
    :cond_1e
    const-string v3, "myView"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "myView":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 262
    sget-object v3, Landroid/app/LGFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:view is removed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz v1, :cond_1d

    .line 264
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method public setPackageContext(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/app/LGFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0, p3}, Landroid/app/LGFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    iget-object v1, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_26

    .line 77
    invoke-virtual {p0}, Landroid/app/LGFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_18

    .line 79
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_18
    const-string v1, "arg_package_name"

    iget-object v2, p0, Landroid/app/LGFragment;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/LGFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    return-void
.end method
