.class public Lcom/android/ims/LGImsDialog$State;
.super Ljava/lang/Object;
.source "LGImsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final EVENT_CANCELLED:I = 0x1

.field public static final EVENT_ERROR:I = 0x6

.field public static final EVENT_LOCAL_BYE:I = 0x4

.field public static final EVENT_NONE:I = 0x0

.field public static final EVENT_REJECTED:I = 0x2

.field public static final EVENT_REMOTE_BYE:I = 0x5

.field public static final EVENT_REPLACED:I = 0x3

.field public static final EVENT_TIMEOUT:I = 0x7

.field public static final STATE_CONFIRMED:I = 0x4

.field public static final STATE_EARLY:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_ON_HOLD:I = 0x6

.field public static final STATE_PROCEEDING:I = 0x2

.field public static final STATE_TERMINATED:I = 0x5

.field public static final STATE_TRYING:I = 0x1


# instance fields
.field private final mCode:I

.field private final mEvent:I

.field private final mState:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/android/ims/LGImsDialog$State;->mState:I

    .line 69
    iput p2, p0, Lcom/android/ims/LGImsDialog$State;->mEvent:I

    .line 70
    iput p3, p0, Lcom/android/ims/LGImsDialog$State;->mCode:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/LGImsDialog$State;->mState:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/LGImsDialog$State;->mEvent:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/LGImsDialog$State;->mCode:I

    .line 77
    return-void
.end method

.method public static createState(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialog$State;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .local v2, "state":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .local v1, "event":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "code":I
    new-instance v3, Lcom/android/ims/LGImsDialog$State;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/ims/LGImsDialog$State;-><init>(III)V

    return-object v3
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/ims/LGImsDialog$State;->mCode:I

    return v0
.end method

.method public getEvent()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/ims/LGImsDialog$State;->mEvent:I

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/android/ims/LGImsDialog$State;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 93
    const-string v0, "[State: state=%d, event=%d, code=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getEvent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getEvent()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog$State;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
