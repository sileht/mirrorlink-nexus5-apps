.class Lcom/android/ims/LGImsDialogState$1;
.super Ljava/lang/Object;
.source "LGImsDialogState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/LGImsDialogState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/ims/LGImsDialogState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialogState;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    new-instance v0, Lcom/android/ims/LGImsDialogState;

    invoke-direct {v0, p1}, Lcom/android/ims/LGImsDialogState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsDialogState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/LGImsDialogState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/LGImsDialogState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 104
    new-array v0, p1, [Lcom/android/ims/LGImsDialogState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/ims/LGImsDialogState$1;->newArray(I)[Lcom/android/ims/LGImsDialogState;

    move-result-object v0

    return-object v0
.end method
