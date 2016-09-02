.class Lcom/lge/android/atservice/LGATCMDService$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/LGATCMDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/LGATCMDService;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/LGATCMDService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/LGATCMDService;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$2;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService$2;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    iput-object p1, v0, Lcom/lge/android/atservice/LGATCMDService;->mServiceState:Landroid/telephony/ServiceState;

    .line 383
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService$2;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    iput-object p1, v0, Lcom/lge/android/atservice/LGATCMDService;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    if-nez p1, :cond_2a

    const-string/jumbo v0, ""

    .line 376
    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/android/atservice/Debug;->LogI(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/lge/android/atservice/LGATCMDService$2;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-static {v0}, Lcom/lge/android/atservice/LGATCMDService;->-wrap0(Lcom/lge/android/atservice/LGATCMDService;)V

    .line 373
    return-void

    .line 377
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method
