.class Lcom/android/internal/policy/FolderPhoneFallbackEventHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "FolderPhoneFallbackEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;

    .line 309
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 312
    const-string v0, "FolderPhoneFallbackEventHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged() : newState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;

    invoke-static {v0, p1}, Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;->access$0(Lcom/android/internal/policy/FolderPhoneFallbackEventHandler;Landroid/telephony/ServiceState;)V

    .line 314
    return-void
.end method
