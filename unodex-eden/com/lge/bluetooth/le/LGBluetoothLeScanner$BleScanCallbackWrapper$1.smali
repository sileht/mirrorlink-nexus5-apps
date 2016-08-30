.class Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;
.super Ljava/lang/Object;
.source "LGBluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

.field private final synthetic val$scanResult:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;->this$1:Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;
    invoke-static {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->access$0(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;->val$scanResult:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 375
    return-void
.end method
