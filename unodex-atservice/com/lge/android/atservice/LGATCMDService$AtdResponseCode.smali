.class Lcom/lge/android/atservice/LGATCMDService$AtdResponseCode;
.super Ljava/lang/Object;
.source "LGATCMDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/android/atservice/LGATCMDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AtdResponseCode"
.end annotation


# static fields
.field public static final ActionInitiated:I = 0x64

.field public static final AtCommandEnd:I = 0x25a

.field public static final AtCommandOkay:I = 0xc8

.field public static final AtCommandParameterError:I = 0x1f5

.field public static final AtCommandRequest:I = 0x25d

.field public static final AtCommandResponse:I = 0x262

.field public static final AtCommandServiceRequest:I = 0xd2

.field public static final AtCommandStart:I = 0x259

.field public static final AtCommandSyntaxError:I = 0x1f4

.field public static final OperationFailed:I = 0x190

.field public static final UnsolicitedInformational:I = 0x258


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/LGATCMDService;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/LGATCMDService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/LGATCMDService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/android/atservice/LGATCMDService$AtdResponseCode;->this$0:Lcom/lge/android/atservice/LGATCMDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
