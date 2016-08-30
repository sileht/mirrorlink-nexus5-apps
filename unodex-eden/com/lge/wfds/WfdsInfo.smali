.class public Lcom/lge/wfds/WfdsInfo;
.super Ljava/lang/Object;
.source "WfdsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final WFDS_SERVICE_STATUS_AVAILABLE:I = 0x1

.field public static final WFDS_SERVICE_STATUS_LOST:I = 0x2

.field public static final WFDS_SERVICE_STATUS_NOT_AVAILABLE:I


# instance fields
.field public mWfdsAdvertiseId:I

.field public mWfdsInterfaceAddress:Ljava/lang/String;

.field public mWfdsRequestRole:I

.field public mWfdsServiceInfo:Ljava/lang/String;

.field public mWfdsServiceName:Ljava/lang/String;

.field public mWfdsServiceStatus:I

.field public mWfdsSessionDeviceName:Ljava/lang/String;

.field public mWfdsSessionId:I

.field public mWfdsSessionInfo:Ljava/lang/String;

.field public mWfdsSessionMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    new-instance v0, Lcom/lge/wfds/WfdsInfo$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsInfo$1;-><init>()V

    .line 152
    sput-object v0, Lcom/lge/wfds/WfdsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 84
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 86
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    .line 89
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/lge/wfds/WfdsInfo;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wfds/WfdsInfo;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-eqz p1, :cond_29

    .line 112
    iget-object v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 114
    iget-object v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 115
    iget v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 116
    iget-object v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 118
    iget v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    .line 119
    iget-object v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 121
    iget v0, p1, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    .line 123
    :cond_29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "advId"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 99
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 101
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    .line 104
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    .line 107
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v2, "0x%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "strId":Ljava/lang/String;
    const-string v2, " advertise id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 180
    const-string v2, "\n service name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_2f
    iget-object v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 183
    const-string v2, "\n service info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    const-string v2, "\n service status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    :cond_49
    iget-object v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    if-eqz v2, :cond_81

    .line 187
    const-string v2, "\n session id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    const-string v2, "\n session Mac: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v2, "\n session info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v2, "\n session device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :cond_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
