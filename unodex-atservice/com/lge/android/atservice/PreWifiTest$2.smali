.class Lcom/lge/android/atservice/PreWifiTest$2;
.super Ljava/lang/Object;
.source "PreWifiTest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/PreWifiTest;->WiFiScanResults()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/PreWifiTest;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/PreWifiTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/PreWifiTest;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest$2;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .registers 5
    .param p1, "r1"    # Landroid/net/wifi/ScanResult;
    .param p2, "r2"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 170
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    if-le v0, v1, :cond_8

    .line 171
    const/4 v0, -0x1

    return v0

    .line 172
    :cond_8
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p2, Landroid/net/wifi/ScanResult;->level:I

    if-ge v0, v1, :cond_10

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "r1"    # Ljava/lang/Object;
    .param p2, "r2"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Landroid/net/wifi/ScanResult;

    .end local p1    # "r1":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/ScanResult;

    .end local p2    # "r2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lge/android/atservice/PreWifiTest$2;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
