.class public final Lcom/lge/nfcaddon/NfcTestCommand;
.super Ljava/lang/Object;
.source "NfcTestCommand.java"


# static fields
.field public static final ACTION_ANTENNASELFTEST_START:I = 0x3

.field public static final ACTION_CONSISTENTFIELD_START:I = 0x8

.field public static final ACTION_CONSISTENTFIELD_STOP:I = 0x9

.field public static final ACTION_CONSISTENTTAGSENSE_START:I = 0xa

.field public static final ACTION_CONSISTENTTAGSENSE_STOP:I = 0xb

.field public static final ACTION_DEFAULT:I = 0xf

.field public static final ACTION_DOWNLOADFIRMWARE_START:I = 0x6

.field public static final ACTION_GETFILEVERSION_START:I = 0x5

.field public static final ACTION_GETVERSION_START:I = 0x7

.field public static final ACTION_GET_CPLCVALUE:I = 0xe

.field public static final ACTION_GET_REGVALUE:I = 0xd

.field public static final ACTION_READERMODETEST_START:I = 0x4

.field public static final ACTION_SERVICE_DISABLE:I = 0x15

.field public static final ACTION_SERVICE_ENABLE:I = 0x14

.field public static final ACTION_SET_REGVALUE:I = 0xc

.field public static final ACTION_SWPTEST_START:I = 0x2

.field public static final ACTION_TESTENV_DISABLE:I = 0x1

.field public static final ACTION_TESTENV_ENABLE:I = 0x0

.field public static final ACTION_TESTSTATUS_CHECK:I = 0x1f

.field public static final ACTION_TESTTHREAD_STOP:I = 0x1e

.field public static final ADAPTER_RESULT_FAIL:B = 0x0t

.field public static final ADAPTER_RESULT_SUCCESS:B = 0x1t

.field public static final INDEX_ADAPTER_RESULT:I = 0x0

.field public static final INDEX_ANTENNATEST_LOOP1_RESULT:I = 0x1

.field public static final INDEX_ANTENNATEST_LOOP2_RESULT:I = 0x2

.field public static final INDEX_ANTENNATEST_LOOP3_RESULT:I = 0x3

.field public static final INDEX_DEFAULT:I = 0x1

.field public static final INDEX_GETFILEVERSION_FW_REV_RESULT:I = 0x2

.field public static final INDEX_GETFILEVERSION_FW_VER_RESULT:I = 0x1

.field public static final INDEX_GETREGISTER_RESULT:I = 0x1

.field public static final INDEX_GETVERSION_FW_REV_RESULT:I = 0x2

.field public static final INDEX_GETVERSION_FW_VER_RESULT:I = 0x1

.field public static final INDEX_REGISTER1_INPUT:I = 0x1

.field public static final INDEX_REGISTER2_INPUT:I = 0x2

.field public static final INDEX_REGISTER3_INPUT:I = 0x3

.field public static final INDEX_SWPTEST_RESULT:I = 0x1

.field public static final INPUT_REG_ARRAY_SIZE:I = 0x3

.field public static final RESULT_DATA_ARRAY_SIZE:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
