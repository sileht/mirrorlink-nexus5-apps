.class Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SetcomDownloadedContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getInstalledApplicationsSize()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/SetcomDownloadedContentHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;->this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 9
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;->this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    iget-object v1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;->this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    iget-wide v2, v1, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalSize:J

    .line 199
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;->this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    iget-object v1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;->this$0:Lcom/lge/android/atservice/SetcomDownloadedContentHandler;

    iget-wide v2, v1, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->packageGetStatCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->packageGetStatCount:J

    .line 197
    return-void
.end method
