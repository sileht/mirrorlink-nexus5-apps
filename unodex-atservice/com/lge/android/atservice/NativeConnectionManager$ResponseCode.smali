.class Lcom/lge/android/atservice/NativeConnectionManager$ResponseCode;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/NativeConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseCode"
.end annotation


# static fields
.field public static final ACTION_INITIATED:I = 0x64

.field public static final COMMAND_OKAY:I = 0xc8

.field public static final COMMAND_PARAMETER_ERROR:I = 0x1f5

.field public static final COMMAND_SYNTAX_ERROR:I = 0x1f4

.field public static final FAILED_RANGE_END:I = 0x257

.field public static final FAILED_RANGE_START:I = 0x190

.field public static final OPERATION_FAILED:I = 0x190

.field public static final UNSOLICITED_INFORMATIONAL:I = 0x258


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/NativeConnectionManager;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/NativeConnectionManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/NativeConnectionManager;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/lge/android/atservice/NativeConnectionManager$ResponseCode;->this$0:Lcom/lge/android/atservice/NativeConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
