.class Lcom/lge/systemservice/core/LGNetworkManager$1;
.super Ljava/lang/Object;
.source "LGNetworkManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LGNetworkManager;->getService()Lcom/lge/systemservice/core/ILGNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LGNetworkManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LGNetworkManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/systemservice/core/LGNetworkManager$1;->this$0:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/systemservice/core/LGNetworkManager$1;->this$0:Lcom/lge/systemservice/core/LGNetworkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/systemservice/core/LGNetworkManager;->access$0(Lcom/lge/systemservice/core/LGNetworkManager;Lcom/lge/systemservice/core/ILGNetworkManager;)V

    return-void
.end method
