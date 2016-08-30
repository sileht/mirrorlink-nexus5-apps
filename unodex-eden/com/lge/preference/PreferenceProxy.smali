.class public Lcom/lge/preference/PreferenceProxy;
.super Ljava/lang/Object;
.source "PreferenceProxy.java"


# static fields
.field private static mIsClickable:Ljava/lang/Object;

.field private static mSetClickable:Ljava/lang/Object;


# instance fields
.field private mPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 28
    const-class v0, Landroid/preference/Preference;

    const-string v1, "setClickable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/preference/PreferenceProxy;->mSetClickable:Ljava/lang/Object;

    .line 29
    const-class v0, Landroid/preference/Preference;

    const-string v1, "isClickable"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/preference/PreferenceProxy;->mIsClickable:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/preference/Preference;)V
    .registers 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lge/preference/PreferenceProxy;->mPreference:Landroid/preference/Preference;

    .line 34
    return-void
.end method


# virtual methods
.method public isClickable()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    :try_start_1
    sget-object v3, Lcom/lge/preference/PreferenceProxy;->mIsClickable:Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/preference/PreferenceProxy;->mPreference:Landroid/preference/Preference;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/lge/util/ProxyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "re":Ljava/lang/Object;
    if-nez v1, :cond_f

    .end local v1    # "re":Ljava/lang/Object;
    :goto_e
    return v2

    .restart local v1    # "re":Ljava/lang/Object;
    :cond_f
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "re":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v2

    goto :goto_e

    .line 63
    :catch_16
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setClickable(Z)V
    .registers 8
    .param p1, "clickable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    sget-object v1, Lcom/lge/preference/PreferenceProxy;->mSetClickable:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lge/preference/PreferenceProxy;->mPreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/lge/util/ProxyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 50
    return-void

    .line 46
    :catch_12
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
