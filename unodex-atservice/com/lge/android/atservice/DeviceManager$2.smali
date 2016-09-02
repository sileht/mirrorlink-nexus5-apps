.class Lcom/lge/android/atservice/DeviceManager$2;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/DeviceManager;->injectKeyUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/DeviceManager;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/DeviceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/DeviceManager;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lge/android/atservice/DeviceManager$2;->this$0:Lcom/lge/android/atservice/DeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/android/atservice/DeviceManager$2;->this$0:Lcom/lge/android/atservice/DeviceManager;

    iget-object v0, v0, Lcom/lge/android/atservice/DeviceManager;->mEventInjector:Lcom/lge/android/atservice/EventInjector;

    iget-object v1, p0, Lcom/lge/android/atservice/DeviceManager$2;->this$0:Lcom/lge/android/atservice/DeviceManager;

    invoke-static {v1}, Lcom/lge/android/atservice/DeviceManager;->-get0(Lcom/lge/android/atservice/DeviceManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/android/atservice/EventInjector;->generateKeyUp(I)V

    .line 155
    return-void
.end method
