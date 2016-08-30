.class Landroid/telecom/LGVideoCallImpl$1;
.super Ljava/lang/Object;
.source "LGVideoCallImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/LGVideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/LGVideoCallImpl;


# direct methods
.method constructor <init>(Landroid/telecom/LGVideoCallImpl;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telecom/LGVideoCallImpl$1;->this$0:Landroid/telecom/LGVideoCallImpl;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Landroid/telecom/LGVideoCallImpl$1;->this$0:Landroid/telecom/LGVideoCallImpl;

    # getter for: Landroid/telecom/LGVideoCallImpl;->mVideoProvider:Lcom/android/internal/telecom/IVideoProviderEx;
    invoke-static {v0}, Landroid/telecom/LGVideoCallImpl;->access$0(Landroid/telecom/LGVideoCallImpl;)Lcom/android/internal/telecom/IVideoProviderEx;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProviderEx;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 231
    return-void
.end method
