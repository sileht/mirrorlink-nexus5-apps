.class public final Lcom/android/ims/ImsStateProvider$VoLteState;
.super Ljava/lang/Object;
.source "ImsStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoLteState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SERVICE_NONE:I = 0x0

.field public static final SERVICE_UC:I = 0x3

.field public static final SERVICE_VOIP:I = 0x1

.field public static final SERVICE_VT:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "volte_state"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "content://com.lge.ims.provider.ims_state/volte_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallState(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 66
    const/4 v0, 0x0

    # invokes: Lcom/android/ims/ImsStateProvider;->getSubId(I)I
    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->access$0(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getCallState(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getCallState(Landroid/content/ContentResolver;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .prologue
    .line 70
    # invokes: Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$1(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_state"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getServiceStatus(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 81
    const/4 v0, 0x0

    # invokes: Lcom/android/ims/ImsStateProvider;->getSubId(I)I
    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->access$0(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getServiceStatus(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getServiceStatus(Landroid/content/ContentResolver;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .prologue
    .line 85
    # invokes: Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$1(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "service_status"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteProvisioned(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 94
    const/4 v0, 0x0

    # invokes: Lcom/android/ims/ImsStateProvider;->getSubId(I)I
    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->access$0(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVoLteProvisioned(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVoLteProvisioned(Landroid/content/ContentResolver;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .prologue
    .line 98
    # invokes: Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$1(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "volte_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVtProvisioned(Landroid/content/ContentResolver;)I
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 107
    const/4 v0, 0x0

    # invokes: Lcom/android/ims/ImsStateProvider;->getSubId(I)I
    invoke-static {v0}, Lcom/android/ims/ImsStateProvider;->access$0(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/ims/ImsStateProvider$VoLteState;->getVtProvisioned(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getVtProvisioned(Landroid/content/ContentResolver;I)I
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "subId"    # I

    .prologue
    .line 111
    # invokes: Lcom/android/ims/ImsStateProvider;->selectForSubId(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/ims/ImsStateProvider;->access$1(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vt_provisioned"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/ims/ImsStateProvider;->getVoLteState(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 116
    sget-object v0, Lcom/android/ims/ImsStateProvider$VoLteState;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public static unregisterObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    return-void
.end method
