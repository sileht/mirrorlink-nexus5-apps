.class Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;
.super Ljava/lang/Object;
.source "LGBluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

.field private final synthetic val$onFound:Z

.field private final synthetic val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    iput-boolean p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    iput-object p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->val$onFound:Z

    if-eqz v0, :cond_11

    .line 408
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->access$0(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x2

    .line 409
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 414
    :goto_10
    return-void

    .line 411
    :cond_11
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->access$0(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x4

    .line 412
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    goto :goto_10
.end method
