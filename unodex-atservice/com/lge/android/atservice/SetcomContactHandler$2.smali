.class Lcom/lge/android/atservice/SetcomContactHandler$2;
.super Ljava/lang/Object;
.source "SetcomContactHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/SetcomContactHandler;->GetContactSize()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/SetcomContactHandler;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/SetcomContactHandler;Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/SetcomContactHandler;
    .param p2, "val$pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomContactHandler$2;->this$0:Lcom/lge/android/atservice/SetcomContactHandler;

    iput-object p2, p0, Lcom/lge/android/atservice/SetcomContactHandler$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/android/atservice/SetcomContactHandler$2;->val$pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.android.providers.contacts"

    iget-object v2, p0, Lcom/lge/android/atservice/SetcomContactHandler$2;->this$0:Lcom/lge/android/atservice/SetcomContactHandler;

    iget-object v2, v2, Lcom/lge/android/atservice/SetcomContactHandler;->packageStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 87
    return-void
.end method
