.class Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;
.super Ljava/lang/Object;
.source "LGBluetoothLeScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

.field private final synthetic val$callback:Landroid/bluetooth/le/ScanCallback;

.field private final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    iput p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;->val$errorCode:I

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;->val$callback:Landroid/bluetooth/le/ScanCallback;

    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;->val$errorCode:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 424
    return-void
.end method
