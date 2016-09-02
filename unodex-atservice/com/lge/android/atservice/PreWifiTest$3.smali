.class Lcom/lge/android/atservice/PreWifiTest$3;
.super Ljava/lang/Object;
.source "PreWifiTest.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/PreWifiTest;->WiFiConnect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/PreWifiTest;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/PreWifiTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/PreWifiTest;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest$3;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 243
    const-string/jumbo v0, "PreWifiTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/android/atservice/PreWifiTest;->-set2(Z)Z

    .line 242
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 240
    const-string/jumbo v0, "PreWifiTest"

    const-string/jumbo v1, "connect success "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
