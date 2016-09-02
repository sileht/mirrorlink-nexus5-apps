.class Lcom/lge/android/atservice/SetcomContactHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SetcomContactHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/SetcomContactHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/SetcomContactHandler;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/SetcomContactHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/SetcomContactHandler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomContactHandler$1;->this$0:Lcom/lge/android/atservice/SetcomContactHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 7
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 73
    if-eqz p2, :cond_d

    .line 74
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomContactHandler$1;->this$0:Lcom/lge/android/atservice/SetcomContactHandler;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v2, v0, Lcom/lge/android/atservice/SetcomContactHandler;->contactStorageDataSize:J

    .line 75
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomContactHandler$1;->this$0:Lcom/lge/android/atservice/SetcomContactHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/android/atservice/SetcomContactHandler;->getContactStorageDataSizeSuceeded:Z

    .line 72
    :cond_d
    return-void
.end method
