.class Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;
.super Ljava/lang/Object;
.source "LGBluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->onBatchScanResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

.field private final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;->val$results:Ljava/util/List;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->access$0(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;->val$results:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 387
    return-void
.end method
