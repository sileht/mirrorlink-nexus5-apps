.class public Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;
.super Ljava/lang/Object;
.source "DevStatReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_DevStatReporter"


# instance fields
.field private mDevStatMsg:Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;)Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->mDevStatMsg:Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->mDevStatMsg:Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    .line 11
    return-void
.end method


# virtual methods
.method public report(Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;)V
    .registers 4
    .param p1, "msg"    # Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;->mDevStatMsg:Lcom/lge/mirrorlink/vnc/lib/DevStatMsg;

    .line 16
    new-instance v0, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;-><init>(Lcom/lge/mirrorlink/vnc/lib/DevStatReporter;Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;)V

    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/DevStatReporter$SendThread;->start()V

    .line 14
    return-void
.end method
