.class public Lcom/lge/systemui/SystemUIDBHelper;
.super Ljava/lang/Object;
.source "SystemUIDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemui/SystemUIDBHelper$QuickSettings;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lge.provider.systemui.systemuiprovider"

.field private static final CALLING_PCAKAGE:Ljava/lang/String;

.field private static final METHOD_SET_USER:Ljava/lang/String; = "SET_USER"

.field private static final PARAMS_SET_USER_MODE:Ljava/lang/String; = "_mode"

.field private static final PARAMS_SET_USER_MODE_READ:Ljava/lang/String; = "_read"

.field private static final PARAMS_SET_USER_USER:Ljava/lang/String; = "_user"

.field private static final TAG:Ljava/lang/String; = "SystemUIDBHelper"

.field private static sContentProvider:Landroid/content/IContentProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/lge/systemui/SystemUIDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemui/SystemUIDBHelper;->CALLING_PCAKAGE:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/systemui/SystemUIDBHelper;->sContentProvider:Landroid/content/IContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/ContentResolver;)V
    .registers 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->findReadForUser(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .registers 2

    .prologue
    .line 23
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/lge/systemui/SystemUIDBHelper;->CALLING_PCAKAGE:Ljava/lang/String;

    return-object v0
.end method

.method private static findReadForUser(Landroid/content/ContentResolver;)V
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_user"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string v2, "_mode"

    const-string v3, "_read"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/lge/systemui/SystemUIDBHelper;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 38
    .local v1, "cp":Landroid/content/IContentProvider;
    if-eqz v1, :cond_23

    .line 39
    :try_start_1b
    sget-object v2, Lcom/lge/systemui/SystemUIDBHelper;->CALLING_PCAKAGE:Ljava/lang/String;

    const-string v3, "SET_USER"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_24

    .line 43
    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception v2

    goto :goto_23
.end method

.method private static lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "cp":Landroid/content/IContentProvider;
    sget-object v0, Lcom/lge/systemui/SystemUIDBHelper;->sContentProvider:Landroid/content/IContentProvider;

    .line 26
    if-nez v0, :cond_d

    .line 27
    const-string v1, "com.lge.provider.systemui.systemuiprovider"

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .end local v0    # "cp":Landroid/content/IContentProvider;
    sput-object v0, Lcom/lge/systemui/SystemUIDBHelper;->sContentProvider:Landroid/content/IContentProvider;

    .line 29
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_d
    return-object v0
.end method
