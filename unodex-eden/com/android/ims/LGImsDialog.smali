.class public Lcom/android/ims/LGImsDialog;
.super Ljava/lang/Object;
.source "LGImsDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/LGImsDialog$Participant;,
        Lcom/android/ims/LGImsDialog$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/LGImsDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INITIATOR:I = 0x1

.field public static final DIRECTION_RECIPIENT:I = 0x2


# instance fields
.field private final mDirection:I

.field private final mId:Ljava/lang/String;

.field private final mLocal:Lcom/android/ims/LGImsDialog$Participant;

.field private final mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field private final mPullEnabled:Z

.field private final mRemote:Lcom/android/ims/LGImsDialog$Participant;

.field private final mState:Lcom/android/ims/LGImsDialog$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 310
    new-instance v0, Lcom/android/ims/LGImsDialog$1;

    invoke-direct {v0}, Lcom/android/ims/LGImsDialog$1;-><init>()V

    sput-object v0, Lcom/android/ims/LGImsDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 330
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/ims/LGImsDialog$State;Lcom/android/ims/LGImsDialog$Participant;Lcom/android/ims/LGImsDialog$Participant;ZLcom/android/ims/ImsStreamMediaProfile;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "direction"    # I
    .param p3, "state"    # Lcom/android/ims/LGImsDialog$State;
    .param p4, "local"    # Lcom/android/ims/LGImsDialog$Participant;
    .param p5, "remote"    # Lcom/android/ims/LGImsDialog$Participant;
    .param p6, "pullEnabled"    # Z
    .param p7, "mediaProfile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/android/ims/LGImsDialog;->mId:Ljava/lang/String;

    .line 227
    iput p2, p0, Lcom/android/ims/LGImsDialog;->mDirection:I

    .line 228
    iput-object p3, p0, Lcom/android/ims/LGImsDialog;->mState:Lcom/android/ims/LGImsDialog$State;

    .line 229
    iput-object p4, p0, Lcom/android/ims/LGImsDialog;->mLocal:Lcom/android/ims/LGImsDialog$Participant;

    .line 230
    iput-object p5, p0, Lcom/android/ims/LGImsDialog;->mRemote:Lcom/android/ims/LGImsDialog$Participant;

    .line 232
    iput-boolean p6, p0, Lcom/android/ims/LGImsDialog;->mPullEnabled:Z

    .line 233
    iput-object p7, p0, Lcom/android/ims/LGImsDialog;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 234
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/android/ims/LGImsDialog;->mDirection:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal()Lcom/android/ims/LGImsDialog$Participant;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mLocal:Lcom/android/ims/LGImsDialog$Participant;

    return-object v0
.end method

.method public getMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public getRemote()Lcom/android/ims/LGImsDialog$Participant;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mRemote:Lcom/android/ims/LGImsDialog$Participant;

    return-object v0
.end method

.method public getState()Lcom/android/ims/LGImsDialog$State;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mState:Lcom/android/ims/LGImsDialog$State;

    return-object v0
.end method

.method public isConference()Z
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mLocal:Lcom/android/ims/LGImsDialog$Participant;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mLocal:Lcom/android/ims/LGImsDialog$Participant;

    invoke-virtual {v0}, Lcom/android/ims/LGImsDialog$Participant;->isConference()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 262
    :cond_c
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mRemote:Lcom/android/ims/LGImsDialog$Participant;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mRemote:Lcom/android/ims/LGImsDialog$Participant;

    invoke-virtual {v0}, Lcom/android/ims/LGImsDialog$Participant;->isConference()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 261
    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public isPullEnabled()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/ims/LGImsDialog;->mPullEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{ Dialog: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 277
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getState()Lcom/android/ims/LGImsDialog$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 279
    const-string v1, ", Local "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getLocal()Lcom/android/ims/LGImsDialog$Participant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 281
    const-string v1, ", Remote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getRemote()Lcom/android/ims/LGImsDialog$Participant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 283
    const-string v1, ", pullEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->isPullEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "Y"

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->getMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 287
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 284
    :cond_67
    const-string v1, "N"

    goto :goto_4e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lcom/android/ims/LGImsDialog;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mState:Lcom/android/ims/LGImsDialog$State;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/LGImsDialog$State;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mLocal:Lcom/android/ims/LGImsDialog$Participant;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/LGImsDialog$Participant;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mRemote:Lcom/android/ims/LGImsDialog$Participant;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/LGImsDialog$Participant;->writeToParcel(Landroid/os/Parcel;I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/ims/LGImsDialog;->isPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Lcom/android/ims/LGImsDialog;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 308
    return-void

    :cond_2a
    move v0, v1

    .line 306
    goto :goto_21
.end method
