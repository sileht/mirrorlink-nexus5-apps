.class Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;
.super Ljava/lang/Object;
.source "SetcomNotesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/SetcomNotesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoredNotesSize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/SetcomNotesHandler;

.field public value:I


# direct methods
.method public constructor <init>(Lcom/lge/android/atservice/SetcomNotesHandler;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/android/atservice/SetcomNotesHandler;
    .param p2, "_value"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;->this$0:Lcom/lge/android/atservice/SetcomNotesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lcom/lge/android/atservice/SetcomNotesHandler$StoredNotesSize;->value:I

    .line 32
    return-void
.end method
