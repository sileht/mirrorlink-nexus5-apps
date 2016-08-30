.class Lcom/lge/app/floating/Res;
.super Ljava/lang/Object;
.source "Res.java"


# static fields
.field private static final RES_PACKAGE_NAME:Ljava/lang/String; = "com.lge.app.floating.res"

.field private static final TAG:Ljava/lang/String;

.field private static resPackageContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/lge/app/floating/Res;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/Res;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResPackageContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 33
    sget-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    .line 35
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static getResPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 21
    sget-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    .line 28
    :goto_6
    return-object v0

    .line 24
    :cond_7
    :try_start_7
    const-string v0, "com.lge.app.floating.res"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_10} :catch_13

    .line 28
    :goto_10
    sget-object v0, Lcom/lge/app/floating/Res;->resPackageContext:Landroid/content/Context;

    goto :goto_6

    .line 26
    :catch_13
    move-exception v0

    sget-object v0, Lcom/lge/app/floating/Res;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find Resources object for package com.lge.app.floating.res"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/lge/app/floating/Res;->getResPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 39
    if-eqz p0, :cond_11

    .line 42
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.lge.app.floating.res"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 43
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_f} :catch_10

    .line 47
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_f
    return-object v1

    :catch_10
    move-exception v1

    :cond_11
    const-string v1, "unknown"

    goto :goto_f
.end method

.method static getVersionCode(Landroid/content/Context;)I
    .registers 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 51
    if-eqz p0, :cond_29

    .line 54
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lge.app.floating.res"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 55
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_f} :catch_10

    .line 60
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_f
    return v2

    .line 56
    :catch_10
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/lge/app/floating/Res;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in getVersionCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    const/4 v2, -0x1

    goto :goto_f
.end method
