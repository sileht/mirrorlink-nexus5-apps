.class Lcom/lge/android/atservice/SetcomEmailHandler$Message;
.super Ljava/lang/Object;
.source "SetcomEmailHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/SetcomEmailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Message"
.end annotation


# static fields
.field private static final COLUMN_MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field private static final COLUMN_MESSAGE_SIZE:Ljava/lang/String; = "msgSize"

.field private static final TABLE_NAME:Ljava/lang/String; = "Message"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
