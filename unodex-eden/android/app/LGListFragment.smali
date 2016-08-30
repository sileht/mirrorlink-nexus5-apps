.class public Landroid/app/LGListFragment;
.super Landroid/app/ListFragment;
.source "LGListFragment.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPackageContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Landroid/app/LGListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    .line 80
    const/4 v3, 0x3

    .line 79
    :try_start_1
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/app/LGListFragment$1;

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    invoke-direct {v1, p0, v0, v3, p1}, Landroid/app/LGListFragment$1;-><init>(Landroid/app/LGListFragment;Landroid/content/Context;ILandroid/content/Context;)V

    .line 98
    .end local v0    # "ctx":Landroid/content/Context;
    .local v1, "ctx":Landroid/content/Context;
    sget v3, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    .line 100
    return-object v1

    .line 101
    .end local v1    # "ctx":Landroid/content/Context;
    :catch_14
    move-exception v2

    .line 102
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to create package context for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    const-string v5, ": make sure the package is installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-direct {v3, v4, v2}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 135
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 137
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v4, v0

    if-lt v2, v4, :cond_26

    .line 146
    :goto_11
    sget-object v4, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPackageName(), packageName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v3

    .line 138
    :cond_26
    aget-byte v4, v0, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_37

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    const/4 v4, 0x3

    if-ne v1, v4, :cond_37

    .line 141
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 142
    goto :goto_11

    .line 137
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method


# virtual methods
.method public addViewToBreadCrumb(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/LGListFragment;->addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 234
    return-void
.end method

.method public addViewToBreadCrumb(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 190
    if-nez p1, :cond_a

    .line 191
    sget-object v4, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_9
    return-void

    .line 195
    :cond_a
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 197
    .local v3, "window":Landroid/view/View;
    const-string v4, "tag_settings_breadcrumb_extra"

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 196
    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_28

    .line 200
    sget-object v4, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    const-string v5, "addViewToBreadCrumb:parentView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 204
    :cond_28
    if-nez p2, :cond_3c

    .line 205
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    const/4 v4, -0x2

    const/4 v5, -0x1

    .line 205
    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 207
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    move-object p2, v0

    .line 212
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3c
    const-string v4, "myView"

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 215
    .local v2, "vp":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4c

    .line 216
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    :cond_4c
    invoke-virtual {p0}, Landroid/app/LGListFragment;->removeViewFromBreadCrumb()V

    .line 221
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 222
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 166
    iget-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 167
    iget-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 168
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 171
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/ListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    iget-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 153
    iget-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 154
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 157
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1}, Landroid/app/ListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_11
.end method

.method public getPackageContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 43
    iget-object v0, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    .line 45
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_6
.end method

.method public isRemoteFragment()Z
    .registers 4

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 271
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "remote_package_name":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 273
    const/4 v2, 0x1

    .line 276
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
    .line 109
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "arg":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 119
    const-string v2, "arg_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "remote_package_name":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 121
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/app/LGListFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    .line 125
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 126
    iget-object v2, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-nez v2, :cond_41

    .line 127
    invoke-direct {p0}, Landroid/app/LGListFragment;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1    # "remote_package_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/app/LGListFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    .line 130
    .end local v1    # "remote_package_name":Ljava/lang/String;
    :cond_41
    return-void
.end method

.method public removeViewFromBreadCrumb()V
    .registers 6

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 244
    .local v2, "window":Landroid/view/View;
    const-string v3, "tag_settings_breadcrumb_extra"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 243
    check-cast v1, Landroid/view/ViewGroup;

    .line 245
    .local v1, "parentView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1e

    .line 246
    sget-object v3, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:parentView is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1d
    :goto_1d
    return-void

    .line 250
    :cond_1e
    const-string v3, "myView"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "myView":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 254
    sget-object v3, Landroid/app/LGListFragment;->TAG:Ljava/lang/String;

    const-string v4, "removeViewFromBreadCrumb:view is removed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz v1, :cond_1d

    .line 256
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method public setPackageContext(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/app/LGListFragment;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0, p3}, Landroid/app/LGListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    iget-object v1, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    if-eqz v1, :cond_26

    .line 61
    invoke-virtual {p0}, Landroid/app/LGListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_18

    .line 63
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_18
    const-string v1, "arg_package_name"

    iget-object v2, p0, Landroid/app/LGListFragment;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/LGListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_26
    return-void
.end method
