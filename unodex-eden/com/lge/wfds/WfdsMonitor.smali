.class public Lcom/lge/wfds/WfdsMonitor;
.super Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
.source "WfdsMonitor.java"


# static fields
.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final BASE:I = 0x902000

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x902018

.field private static final P2P_EVENT_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field private static final TAG:Ljava/lang/String; = "WfdsMonitor"

.field public static final WFDS_DEVICE_FOUND_EVENT:I = 0x902003

.field public static final WFDS_DEVICE_INFO_LOST_EVENT:I = 0x902017

.field public static final WFDS_DEVICE_LOST_EVENT:I = 0x902016

.field private static final WFDS_EVENT_DEVICE_FOUND_STR:Ljava/lang/String; = "WFDS-DEVICE-FOUND"

.field private static final WFDS_EVENT_DEVICE_INFO_LOST_STR:Ljava/lang/String; = "WFDS-DEVICE-INFO-LOST"

.field private static final WFDS_EVENT_DEVICE_LOST_STR:Ljava/lang/String; = "WFDS-DEVICE-LOST"

.field private static final WFDS_EVENT_GO_NEG_FAIL_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final WFDS_EVENT_GROUP_FORMATION_FAIL_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field private static final WFDS_EVENT_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field private static final WFDS_EVENT_PERSISTENT_UNKNOWN_GROUP_STR:Ljava/lang/String; = "WFDS-PERSISTENT-UNKNOWN-GROUP"

.field private static final WFDS_EVENT_PREFIX_STR:Ljava/lang/String; = "WFDS"

.field private static final WFDS_EVENT_PROV_DISC_ACCEPT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-ACCEPT"

.field private static final WFDS_EVENT_PROV_DISC_DEFER_STR:Ljava/lang/String; = "WFDS-PROV-DISC-DEFER"

.field private static final WFDS_EVENT_PROV_DISC_DEF_PIN_STR:Ljava/lang/String; = "WFDS-PROV-DISC-DEF-PIN"

.field private static final WFDS_EVENT_PROV_DISC_DISPLAY_STR:Ljava/lang/String; = "WFDS-PROV-DISC-SHOW-PIN"

.field private static final WFDS_EVENT_PROV_DISC_FAIL_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field private static final WFDS_EVENT_PROV_DISC_KEYPAD_STR:Ljava/lang/String; = "WFDS-PROV-DISC-ENTER-PIN"

.field private static final WFDS_EVENT_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PBC-REQ"

.field private static final WFDS_EVENT_PROV_DISC_PBC_RESP_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PBC-RESP"

.field private static final WFDS_EVENT_PROV_DISC_PERSISTENT_RESULT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-PERSISTENT-RESULT"

.field private static final WFDS_EVENT_PROV_DISC_REQ_SENT_STR:Ljava/lang/String; = "WFDS-PROV-DISC-SENT"

.field private static final WFDS_EVENT_PROV_DISC_REQ_STR:Ljava/lang/String; = "WFDS-PROV-DISC-REQ"

.field private static final WFDS_EVENT_SUPP_CONNECTED_STR:Ljava/lang/String; = "WFDS-SUPPLICANT-CONNECTED"

.field private static final WFDS_EVENT_SUPP_TERMINATING_STR:Ljava/lang/String; = "CTRL-EVENT-TERMINATING "

.field public static final WFDS_GET_INTERFACE_ADDRESS_EVENT:I = 0x902014

.field public static final WFDS_GO_NEG_FAIL_EVENT:I = 0x90200f

.field public static final WFDS_GROUP_STARTED_EVENT:I = 0x902011

.field private static final WFDS_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final WFDS_P2P_DISCONNECTED_EVENT:I = 0x902015

.field public static final WFDS_P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x902013

.field public static final WFDS_P2P_GROUP_REMOVED_EVENT:I = 0x902012

.field public static final WFDS_PERSISTENT_UNKNOWN_EVENT:I = 0x90200e

.field public static final WFDS_PROV_DISC_ACCEPT_EVENT:I = 0x902006

.field public static final WFDS_PROV_DISC_DEFER_EVENT:I = 0x902010

.field public static final WFDS_PROV_DISC_DEF_PIN_EVENT:I = 0x90200a

.field public static final WFDS_PROV_DISC_DISPLAY_EVENT:I = 0x90200b

.field public static final WFDS_PROV_DISC_FAIL_EVENT:I = 0x902007

.field public static final WFDS_PROV_DISC_KEYPAD_EVENT:I = 0x90200c

.field public static final WFDS_PROV_DISC_PBC_REQ_EVENT:I = 0x902008

.field public static final WFDS_PROV_DISC_PBC_RESP_EVENT:I = 0x902009

.field public static final WFDS_PROV_DISC_PERSISTENT_EVENT:I = 0x90200d

.field public static final WFDS_PROV_DISC_REQ_EVENT:I = 0x902004

.field public static final WFDS_PROV_DISC_REQ_SENT_EVENT:I = 0x902005

.field public static final WFDS_SUPPLICANT_CONNECTED:I = 0x902001

.field public static final WFDS_SUPPLICANT_TERMINATING:I = 0x902002


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScanAlwaysAvailable:Z

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;

.field private mWfdsStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Lcom/lge/wfds/WfdsNative;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p3, "wfdsNative"    # Lcom/lge/wfds/WfdsNative;

    .prologue
    .line 93
    const-string v0, "WfdsMonitor"

    invoke-direct {p0, p3, v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtNative;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/lge/wfds/WfdsMonitor;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 96
    iput-object p3, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 97
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    .line 98
    return-void
.end method

.method private getError(Ljava/lang/String;)I
    .registers 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 247
    const/16 v0, 0xc

    .line 249
    .local v0, "UNKNOWN":I
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v6, :cond_e

    .line 262
    .end local v0    # "UNKNOWN":I
    :cond_d
    :goto_d
    return v0

    .line 253
    .restart local v0    # "UNKNOWN":I
    :cond_e
    aget-object v4, v3, v5

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "nameValue":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v6, :cond_d

    .line 258
    const/4 v4, 0x1

    :try_start_1a
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_22

    move-result v2

    .local v2, "status":I
    :goto_20
    move v0, v2

    .line 262
    goto :goto_d

    .line 260
    .end local v2    # "status":I
    :catch_22
    move-exception v4

    const/4 v2, 0x7

    .restart local v2    # "status":I
    goto :goto_20
.end method

.method private handleConnectionEvent(Ljava/lang/String;)V
    .registers 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 234
    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 235
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x902014

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 244
    :cond_11
    :goto_11
    return-void

    .line 236
    :cond_12
    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 238
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v3, :cond_11

    .line 240
    aget-object v2, v1, v3

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 241
    .local v0, "deviceAddr":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x902015

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11
.end method

.method private handleP2pEvent(Ljava/lang/String;)V
    .registers 7
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 218
    const-string v0, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902007

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 231
    :cond_11
    :goto_11
    return-void

    .line 220
    :cond_12
    const-string v0, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 221
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902012

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 222
    :cond_28
    const-string v0, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 223
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 224
    const v2, 0x90200f

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor;->getError(Ljava/lang/String;)I

    move-result v3

    .line 223
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_11

    .line 225
    :cond_43
    const-string v0, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 226
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    .line 227
    const v2, 0x902013

    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor;->getError(Ljava/lang/String;)I

    move-result v3

    .line 226
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_11

    .line 228
    :cond_5e
    const-string v0, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902011

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11
.end method

.method private handleWfdsEvent(Ljava/lang/String;)V
    .registers 9
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 162
    const-string v4, "WFDS-SUPPLICANT-CONNECTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 163
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902001

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 215
    :cond_11
    :goto_11
    return-void

    .line 164
    :cond_12
    const-string v4, "WFDS-DEVICE-FOUND"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 165
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902003

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 168
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_28
    const-string v4, "WFDS-PROV-DISC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 169
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Ljava/lang/String;)V

    .line 170
    .restart local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902004

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 171
    .end local v1    # "device":Lcom/lge/wfds/WfdsDevice;
    :cond_3e
    const-string v4, "WFDS-PROV-DISC-SENT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 172
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902005

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 174
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_57
    const-string v4, "WFDS-PROV-DISC-ACCEPT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 175
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 176
    .restart local v3    # "tokens":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902006

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 177
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_70
    const-string v4, "WFDS-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 178
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902008

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_11

    .line 179
    :cond_81
    const-string v4, "WFDS-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 180
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902009

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_11

    .line 181
    :cond_92
    const-string v4, "WFDS-PROV-DISC-DEF-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 182
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x90200a

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 183
    :cond_a4
    const-string v4, "WFDS-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 184
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x90200b

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 185
    :cond_b6
    const-string v4, "WFDS-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 186
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x90200c

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 187
    :cond_c8
    const-string v4, "WFDS-PROV-DISC-PERSISTENT-RESULT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 188
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .restart local v3    # "tokens":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e3

    .line 190
    const-string v4, "WfdsMonitor"

    const-string v5, "Invailed Arguments Length"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 193
    :cond_e3
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x90200d

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 194
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_ef
    const-string v4, "WFDS-PERSISTENT-UNKNOWN-GROUP"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_101

    .line 195
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x90200e

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 196
    :cond_101
    const-string v4, "WFDS-PROV-DISC-DEFER"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 197
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902010

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 199
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    :cond_118
    const-string v4, "WFDS-DEVICE-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 201
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 203
    .local v2, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902016

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 204
    .end local v2    # "deviceAddr":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_13a
    const-string v4, "WFDS-DEVICE-INFO-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 206
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 208
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902017

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 209
    .end local v2    # "deviceAddr":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_15c
    const-string v4, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 211
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "tokens":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v6

    .line 213
    .restart local v2    # "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v5, 0x902018

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_11
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "WFDS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor;->handleWfdsEvent(Ljava/lang/String;)V

    .line 158
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_d
    const-string v0, "P2P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 150
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor;->handleP2pEvent(Ljava/lang/String;)V

    goto :goto_b

    .line 151
    :cond_19
    const-string v0, "AP-STA-CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 152
    const-string v0, "AP-STA-DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 153
    :cond_29
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsMonitor;->handleConnectionEvent(Ljava/lang/String;)V

    goto :goto_b

    .line 154
    :cond_2d
    const-string v0, "CTRL-EVENT-TERMINATING "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902002

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_b
.end method

.method public getScanAlwaysAvailable()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/lge/wfds/WfdsMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 133
    const-string v3, "wifi_scan_always_enabled"

    .line 132
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method declared-synchronized handleWifiScanAlwaysAvailable()V
    .registers 4

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsMonitor;->getScanAlwaysAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    .line 128
    const-string v0, "WfdsMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set ScanAlwaysAvailable to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/wfds/WfdsMonitor;->mScanAlwaysAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supplicantConnection(Z)V
    .registers 5
    .param p1, "bConnected"    # Z

    .prologue
    .line 139
    const-string v0, "WfdsMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supplicantConnection("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz p1, :cond_24

    .line 141
    iget-object v0, p0, Lcom/lge/wfds/WfdsMonitor;->mWfdsStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x902001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 143
    :cond_24
    return-void
.end method
