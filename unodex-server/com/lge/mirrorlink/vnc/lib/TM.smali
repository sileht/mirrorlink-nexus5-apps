.class public abstract Lcom/lge/mirrorlink/vnc/lib/TM;
.super Ljava/lang/Object;
.source "TM.java"


# static fields
.field public static final AudioBlockingNotification:I = 0x12

.field public static final ByeBye:I = 0x0

.field public static final ClientDisplayConfiguration:I = 0x2

.field public static final ClientEventConfiguration:I = 0x4

.field public static final ContentAttestationRequest:I = 0xe

.field public static final ContentAttestationResponse:I = 0xd

.field public static final DEVICE_APPLICATION:I = 0x5

.field public static final DEVICE_BACKWARD:I = 0xc

.field public static final DEVICE_CLEAR:I = 0xa

.field public static final DEVICE_DELETE:I = 0x7

.field public static final DEVICE_FORWARD:I = 0xb

.field public static final DEVICE_HOME:I = 0xd

.field public static final DEVICE_KEYSYM_BASE:I = 0x30000200

.field public static final DEVICE_MAX:I = 0x10

.field public static final DEVICE_MENU:I = 0xf

.field public static final DEVICE_OK:I = 0x6

.field public static final DEVICE_PHONE_CALL:I = 0x0

.field public static final DEVICE_PHONE_END:I = 0x1

.field public static final DEVICE_SEARCH:I = 0xe

.field public static final DEVICE_SOFT_LEFT:I = 0x2

.field public static final DEVICE_SOFT_MIDDLE:I = 0x3

.field public static final DEVICE_SOFT_RIGHT:I = 0x4

.field public static final DEVICE_ZOOM_IN:I = 0x8

.field public static final DEVICE_ZOOM_OUT:I = 0x9

.field public static final DeviceStatus:I = 0xb

.field public static final DeviceStatusRequest:I = 0xc

.field public static final EncodingContextInformation:I = -0x20c

.field public static final EncodingScanlineRLE:I = -0x20d

.field public static final EncodingTM:I = -0x20b

.field public static final EncodingTransform:I = -0x20e

.field public static final EventMapping:I = 0x5

.field public static final EventMappingRequest:I = 0x6

.field public static final FramebufferAlternativeText:I = 0x15

.field public static final FramebufferAlternativeTextRequest:I = 0x16

.field public static final FramebufferBlockingNotification:I = 0x10

.field public static final KEY_EVENT_MAPPING_SUPPORT:I = 0x3

.field public static final KEY_ITU_KEYPAD:I = 0x0

.field public static final KEY_KEY_EVENT_LISTING_SUPPORT:I = 0x2

.field public static final KEY_VIRTUAL_KEYBOARD_TRIGGER_SUPPORT:I = 0x1

.field public static final KNOB_KEYSYM_BASE:I = 0x30000000

.field public static final KNOB_KEY_ROTATE_X_LEFT:I = 0xb

.field public static final KNOB_KEY_ROTATE_X_RIGHT:I = 0xa

.field public static final KNOB_KEY_ROTATE_Y_LEFT:I = 0xd

.field public static final KNOB_KEY_ROTATE_Y_RIGHT:I = 0xc

.field public static final KNOB_KEY_ROTATE_Z_LEFT:I = 0xf

.field public static final KNOB_KEY_ROTATE_Z_RIGHT:I = 0xe

.field public static final KNOB_KEY_SHIFT_DOWN:I = 0x5

.field public static final KNOB_KEY_SHIFT_DOWN_LEFT:I = 0x7

.field public static final KNOB_KEY_SHIFT_DOWN_RIGHT:I = 0x6

.field public static final KNOB_KEY_SHIFT_LEFT:I = 0x1

.field public static final KNOB_KEY_SHIFT_PULL:I = 0x9

.field public static final KNOB_KEY_SHIFT_PUSH:I = 0x8

.field public static final KNOB_KEY_SHIFT_RIGHT:I = 0x0

.field public static final KNOB_KEY_SHIFT_UP:I = 0x2

.field public static final KNOB_KEY_SHIFT_UP_LEFT:I = 0x4

.field public static final KNOB_KEY_SHIFT_UP_RIGHT:I = 0x3

.field public static final KNOB_PULL_Z:I = 0x4

.field public static final KNOB_PUSH_Z:I = 0x3

.field public static final KNOB_ROTATE_X:I = 0x5

.field public static final KNOB_ROTATE_Y:I = 0x6

.field public static final KNOB_ROTATE_Z:I = 0x7

.field public static final KNOB_SHIFT_X:I = 0x0

.field public static final KNOB_SHIFT_XY:I = 0x2

.field public static final KNOB_SHIFT_Y:I = 0x1

.field public static final KeyEventListing:I = 0x7

.field public static final KeyEventListingRequest:I = 0x8

.field public static final MULTIMEDIA_FORWARD:I = 0x3

.field private static final MULTIMEDIA_KEYSYM_BASE:I = 0x30000400

.field public static final MULTIMEDIA_MAX:I = 0xa

.field public static final MULTIMEDIA_MUTE:I = 0x7

.field public static final MULTIMEDIA_NEXT:I = 0x5

.field public static final MULTIMEDIA_PAUSE:I = 0x1

.field public static final MULTIMEDIA_PHOTO:I = 0x9

.field public static final MULTIMEDIA_PLAY:I = 0x0

.field public static final MULTIMEDIA_PREVIOUS:I = 0x6

.field public static final MULTIMEDIA_REWIND:I = 0x4

.field public static final MULTIMEDIA_STOP:I = 0x2

.field public static final MULTIMEDIA_UNMUTE:I = 0x8

.field public static final POINTER_POINTER_SUPPORT:I = 0x0

.field public static final POINTER_TOUCH_SUPPORT:I = 0x1

.field public static final ServerDisplayConfiguration:I = 0x1

.field public static final ServerEventConfiguration:I = 0x3

.field public static final TMExt:I = 0x80

.field public static final TM_KEY_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TouchEvent:I = 0x14

.field public static final VirtualKeyboardTrigger:I = 0x9

.field public static final VirtualKeyboardTriggerRequest:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 203
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    .line 206
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:0"

    const v3, 0x30000100

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:1"

    const v3, 0x30000101

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:2"

    const v3, 0x30000102

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:3"

    const v3, 0x30000103

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:4"

    const v3, 0x30000104

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:5"

    const v3, 0x30000105

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:6"

    const v3, 0x30000106

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:7"

    const v3, 0x30000107

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:8"

    const v3, 0x30000108

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:9"

    const v3, 0x30000109

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:Asterix"

    const v3, 0x3000010a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "ITU:Pound"

    const v3, 0x3000010b

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:PHONE CALL"

    const v3, 0x30000200

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:PHONE END"

    const v3, 0x30000201

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:SOFT LEFT"

    const v3, 0x30000202

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:SOFT MIDDLE"

    const v3, 0x30000203

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:SOFT RIGHT"

    const v3, 0x30000204

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:APPLICATION"

    const v3, 0x30000205

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:OK"

    const v3, 0x30000206

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:DELETE"

    const v3, 0x30000207

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:ZOOM IN"

    const v3, 0x30000208

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:ZOOM OUT"

    const v3, 0x30000209

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:CLEAR"

    const v3, 0x3000020a

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:FORWARD"

    const v3, 0x3000020b

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:BACKWARD"

    const v3, 0x3000020c

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:HOME"

    const v3, 0x3000020d

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:SEARCH"

    const v3, 0x3000020e

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "DEVICE:MENU"

    const v3, 0x3000020f

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13c
    const/16 v1, 0x100

    if-ge v0, v1, :cond_160

    .line 237
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const v2, 0x30000300

    add-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FUNCTION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_13c

    .line 240
    :cond_160
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:PLAY"

    const v3, 0x30000400

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:PAUSE"

    const v3, 0x30000401

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:STOP"

    const v3, 0x30000402

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:FORWARD"

    const v3, 0x30000403

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:REWIND"

    const v3, 0x30000404

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:NEXT"

    const v3, 0x30000405

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:PREVIOUS"

    const v3, 0x30000406

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:MUTE"

    const v3, 0x30000407

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:UNMUTE"

    const v3, 0x30000408

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v2, "MULTIMEDIA:PHOTO"

    const v3, 0x30000409

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KEY_FUNCTION_KEY(I)I
    .registers 2
    .param p0, "x"    # I

    .prologue
    .line 160
    add-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static getDeviceKeySym(I)I
    .registers 2
    .param p0, "key"    # I

    .prologue
    .line 77
    if-ltz p0, :cond_6

    const/16 v0, 0x10

    if-lt p0, v0, :cond_8

    .line 78
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_8
    const v0, 0x30000200

    add-int/2addr v0, p0

    return v0
.end method

.method public static getKeyCodeName(I)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 194
    const/high16 v1, 0x30000000

    if-le p0, v1, :cond_21

    .line 195
    sget-object v1, Lcom/lge/mirrorlink/vnc/lib/TM;->TM_KEY_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_11

    .end local v0    # "name":Ljava/lang/String;
    :goto_10
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_11
    const-string/jumbo v1, "0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 200
    .end local v0    # "name":Ljava/lang/String;
    :cond_21
    const-string/jumbo v1, "0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKnobKeySym(II)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "knob"    # I

    .prologue
    .line 148
    if-ltz p1, :cond_6

    const/16 v0, 0xf

    if-le p1, v0, :cond_8

    .line 149
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 151
    :cond_8
    mul-int/lit8 v0, p0, 0x10

    const/high16 v1, 0x30000000

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public static getMultimediaKeySym(I)I
    .registers 2
    .param p0, "key"    # I

    .prologue
    .line 103
    if-ltz p0, :cond_6

    const/16 v0, 0xa

    if-lt p0, v0, :cond_8

    .line 104
    :cond_6
    const/4 v0, -0x1

    return v0

    .line 106
    :cond_8
    const v0, 0x30000400

    add-int/2addr v0, p0

    return v0
.end method

.method public static getNKnob(II)I
    .registers 3
    .param p0, "n"    # I
    .param p1, "knob"    # I

    .prologue
    .line 140
    if-ltz p1, :cond_5

    const/4 v0, 0x7

    if-le p1, v0, :cond_7

    .line 141
    :cond_5
    const/4 v0, -0x1

    return v0

    .line 143
    :cond_7
    mul-int/lit8 v0, p0, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method public static getSupportKey(I)I
    .registers 3
    .param p0, "key"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    .line 168
    .local v0, "eventKey":I
    if-gez p0, :cond_5

    .line 169
    const/4 v1, -0x1

    return v1

    .line 171
    :cond_5
    rem-int/lit8 v1, p0, 0x64

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/Utility;->setBit(II)I

    move-result v0

    .line 172
    return v0
.end method

.method public static writeTMHeader(Ljava/io/OutputStream;II)V
    .registers 5
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "extType"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    int-to-short v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 183
    return-void
.end method
