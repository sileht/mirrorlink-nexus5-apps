.class Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;
.super Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;
.source "EventMappingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/EventMappingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/EventMappingManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/EventMappingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IEventMappingManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventConfiguration()Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v3

    .line 41
    .local v3, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-nez v3, :cond_8

    .line 42
    return-object v6

    .line 44
    :cond_8
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v5

    .line 45
    .local v5, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-nez v5, :cond_f

    .line 46
    return-object v6

    .line 48
    :cond_f
    invoke-virtual {v5}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v4

    .line 49
    .local v4, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-nez v4, :cond_16

    .line 50
    return-object v6

    .line 52
    :cond_16
    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v2

    .line 53
    .local v2, "eventInjectTH":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
    if-nez v2, :cond_1d

    .line 54
    return-object v6

    .line 56
    :cond_1d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v1, "eventConf_Bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getEventConInstance()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;

    move-result-object v0

    .line 58
    .local v0, "event":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;
    const-string/jumbo v6, "KEYBOARD_LANGUAGE"

    iget-short v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->kbdLanguage:S

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 59
    const-string/jumbo v6, "KEYBOARD_COUNTRY"

    iget-short v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->kbdCountry:S

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 60
    const-string/jumbo v6, "UI_LANGUAGE"

    iget-short v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->uiLanguage:S

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 61
    const-string/jumbo v6, "UI_COUNTRY"

    iget-short v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->uiCountry:S

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 62
    const-string/jumbo v6, "KNOB_KEY_SUPPORT"

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->knobkey:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v6, "DEVICE_KEY_SUPPORT"

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->devicekey:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v6, "MULTIMEDIA_KEY_SUPPORT"

    iget v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->multimediakey:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v6, "FUNC_KEY_SUPPORT"

    iget-byte v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->funckey:B

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string/jumbo v6, "ITU_KEY_SUPPORT"

    iget-boolean v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->itukey:Z

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string/jumbo v6, "TOUCH_SUPPORT"

    iget-byte v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->touch:B

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string/jumbo v6, "PRESSURE_MASK"

    iget-byte v7, v0, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread$EventConfiguration;->pressure:B

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-object v1
.end method

.method public getEventMappings()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v5

    .line 75
    .local v5, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-nez v5, :cond_8

    .line 76
    return-object v8

    .line 78
    :cond_8
    invoke-virtual {v5}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v7

    .line 79
    .local v7, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-nez v7, :cond_f

    .line 80
    return-object v8

    .line 82
    :cond_f
    invoke-virtual {v7}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v6

    .line 83
    .local v6, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-nez v6, :cond_16

    .line 84
    return-object v8

    .line 86
    :cond_16
    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getEventInjectorThread()Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;

    move-result-object v1

    .line 87
    .local v1, "eventInjectTH":Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;
    if-nez v1, :cond_1d

    .line 88
    return-object v8

    .line 90
    :cond_1d
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/EventInjectorThread;->getEventMapping()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 91
    .local v3, "keyMap":Landroid/util/SparseIntArray;
    if-nez v3, :cond_24

    .line 92
    return-object v8

    .line 94
    :cond_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, "keyMap_List":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_75

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "REMOTE_EVENT"

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v8, "LOCAL_EVENT"

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string/jumbo v8, "MirrorLink_cAPI"

    const-string/jumbo v9, "clientkey:0x%08X serverkey:0x%08X"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 102
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_75
    return-object v4
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 107
    const-string/jumbo v1, "MirrorLink_cAPI"

    const-string/jumbo v2, "[START] unregister"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 109
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_18

    .line 110
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/EventMappingManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/EventMappingManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/EventMappingManager;->-get0(Lcom/lge/mirrorlink/commonapi/EventMappingManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterEventMappingManager(Ljava/lang/String;)V

    .line 106
    :cond_18
    return-void
.end method
