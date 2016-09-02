.class Lcom/lge/android/atservice/SetcomEmailHandler$Mailbox;
.super Ljava/lang/Object;
.source "SetcomEmailHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/SetcomEmailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mailbox"
.end annotation


# static fields
.field private static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final MAIL_BOX_TYPE_INBOX:I = 0x0

.field private static final TABLE_NAME:Ljava/lang/String; = "Mailbox"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
