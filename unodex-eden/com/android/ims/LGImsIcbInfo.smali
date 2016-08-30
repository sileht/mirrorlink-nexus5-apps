.class public Lcom/android/ims/LGImsIcbInfo;
.super Ljava/lang/Object;
.source "LGImsIcbInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/LGImsIcbInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_INACTIVE:I = 0x0

.field public static final TYPE_ANONYMOUS:I = 0x0

.field public static final TYPE_MALICIOUS:I = 0x1


# instance fields
.field private final mCondition:Ljava/lang/String;

.field private final mRuleId:Ljava/lang/String;

.field private final mState:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/ims/LGImsIcbInfo$1;

    invoke-direct {v0}, Lcom/android/ims/LGImsIcbInfo$1;-><init>()V

    .line 108
    sput-object v0, Lcom/android/ims/LGImsIcbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "condition"    # Ljava/lang/String;
    .param p4, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/ims/LGImsIcbInfo;->mType:I

    .line 51
    iput p2, p0, Lcom/android/ims/LGImsIcbInfo;->mState:I

    .line 52
    iput-object p3, p0, Lcom/android/ims/LGImsIcbInfo;->mCondition:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/android/ims/LGImsIcbInfo;->mRuleId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/LGImsIcbInfo;->mType:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/LGImsIcbInfo;->mState:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/LGImsIcbInfo;->mCondition:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/LGImsIcbInfo;->mRuleId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/ims/LGImsIcbInfo;->mCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/ims/LGImsIcbInfo;->mRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/ims/LGImsIcbInfo;->mState:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/ims/LGImsIcbInfo;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ImsIcbInfo: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    const-string v1, "enabled"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, ", ruleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getRuleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    :cond_3f
    const-string v1, "disabled"

    goto :goto_1f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/ims/LGImsIcbInfo;->getRuleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
