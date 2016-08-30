.class public Landroid/media/TimedTextEx;
.super Ljava/lang/Object;
.source "TimedTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedTextEx$Backspace;,
        Landroid/media/TimedTextEx$CarriageReturn;,
        Landroid/media/TimedTextEx$ClearWindows;,
        Landroid/media/TimedTextEx$DefineWindow;,
        Landroid/media/TimedTextEx$Delay;,
        Landroid/media/TimedTextEx$DelayCancel;,
        Landroid/media/TimedTextEx$DeleteWindows;,
        Landroid/media/TimedTextEx$DisplayWindows;,
        Landroid/media/TimedTextEx$EndOfCaption;,
        Landroid/media/TimedTextEx$EraseDisplayMemory;,
        Landroid/media/TimedTextEx$EraseNondisplayMemory;,
        Landroid/media/TimedTextEx$FormFeed;,
        Landroid/media/TimedTextEx$HideWindows;,
        Landroid/media/TimedTextEx$HorizontalCarriageReturn;,
        Landroid/media/TimedTextEx$MethodOverride;,
        Landroid/media/TimedTextEx$PreambleAdressCode;,
        Landroid/media/TimedTextEx$Reset;,
        Landroid/media/TimedTextEx$ResumeCaptionLoading;,
        Landroid/media/TimedTextEx$ResumeTextDisplay;,
        Landroid/media/TimedTextEx$Rollup2;,
        Landroid/media/TimedTextEx$Rollup3;,
        Landroid/media/TimedTextEx$Rollup4;,
        Landroid/media/TimedTextEx$SetCurrentWindow;,
        Landroid/media/TimedTextEx$SetPenAttribute;,
        Landroid/media/TimedTextEx$SetPenColor;,
        Landroid/media/TimedTextEx$SetPenLocation;,
        Landroid/media/TimedTextEx$SetWindowAttribute;,
        Landroid/media/TimedTextEx$TapOffset1;,
        Landroid/media/TimedTextEx$TapOffset2;,
        Landroid/media/TimedTextEx$TapOffset3;,
        Landroid/media/TimedTextEx$TextAttribute;,
        Landroid/media/TimedTextEx$ToggleWindows;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x12d

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_EX_COMMAND:I = 0x6

.field public static final KEY_EX_COMMAND_BACKSPACE:I = 0x70

.field public static final KEY_EX_COMMAND_CARRIAGE_RETURN:I = 0x6e

.field public static final KEY_EX_COMMAND_CLEAR_WINDOWS:I = 0xca

.field public static final KEY_EX_COMMAND_DEFINE_WINDOW:I = 0xcb

.field public static final KEY_EX_COMMAND_DELAY:I = 0xdd

.field public static final KEY_EX_COMMAND_DELAY_CANCEL:I = 0xde

.field public static final KEY_EX_COMMAND_DELETE_WINDOWS:I = 0xcc

.field public static final KEY_EX_COMMAND_DISPLAY_WINDOWS:I = 0xcd

.field public static final KEY_EX_COMMAND_END_OF_CAPTION:I = 0x67

.field public static final KEY_EX_COMMAND_ERASE_DISPLAYED_MEMORY:I = 0x65

.field public static final KEY_EX_COMMAND_ERASE_NONDISPLAYED_MEMORY:I = 0x6f

.field public static final KEY_EX_COMMAND_FORM_FEED:I = 0xe8

.field public static final KEY_EX_COMMAND_HIDE_WINDOWS:I = 0xce

.field public static final KEY_EX_COMMAND_HORIZONTAL_CARRIAGE_RETURN:I = 0xe7

.field public static final KEY_EX_COMMAND_PAC:I = 0x72

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_HORIZONTAL:I = 0x133

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_POINT:I = 0x130

.field private static final KEY_EX_COMMAND_PARA_ANCHOR_VERTICAL:I = 0x132

.field private static final KEY_EX_COMMAND_PARA_BG_COLOR:I = 0x154

.field private static final KEY_EX_COMMAND_PARA_BG_OPACITY:I = 0x155

.field private static final KEY_EX_COMMAND_PARA_BORDER_COLOR:I = 0x145

.field private static final KEY_EX_COMMAND_PARA_BORDER_TYPE:I = 0x144

.field private static final KEY_EX_COMMAND_PARA_COLOR_608:I = 0x16a

.field private static final KEY_EX_COMMAND_PARA_COLUMN:I = 0x158

.field private static final KEY_EX_COMMAND_PARA_COLUMN_COUNT:I = 0x135

.field private static final KEY_EX_COMMAND_PARA_COLUMN_LOCK:I = 0x137

.field private static final KEY_EX_COMMAND_PARA_DISPLAY_EFFECT:I = 0x13f

.field private static final KEY_EX_COMMAND_PARA_EDGE_COLOR:I = 0x156

.field private static final KEY_EX_COMMAND_PARA_EDGE_TYPE:I = 0x151

.field private static final KEY_EX_COMMAND_PARA_EFFECT_DIRECTION:I = 0x140

.field private static final KEY_EX_COMMAND_PARA_EFFECT_SPEED:I = 0x141

.field private static final KEY_EX_COMMAND_PARA_FG_COLOR:I = 0x152

.field private static final KEY_EX_COMMAND_PARA_FG_OPACITY:I = 0x153

.field private static final KEY_EX_COMMAND_PARA_FILL_COLOR:I = 0x142

.field private static final KEY_EX_COMMAND_PARA_FILL_OPACITY:I = 0x143

.field private static final KEY_EX_COMMAND_PARA_FONT:I = 0x14c

.field private static final KEY_EX_COMMAND_PARA_FONT_608:I = 0x16b

.field private static final KEY_EX_COMMAND_PARA_INDENT_608:I = 0x16c

.field private static final KEY_EX_COMMAND_PARA_ITALICS:I = 0x14f

.field private static final KEY_EX_COMMAND_PARA_JUSTIFY:I = 0x13b

.field private static final KEY_EX_COMMAND_PARA_OFFSET:I = 0x14e

.field private static final KEY_EX_COMMAND_PARA_PEN_SIZE:I = 0x14b

.field private static final KEY_EX_COMMAND_PARA_PEN_STYLE_ID:I = 0x13a

.field private static final KEY_EX_COMMAND_PARA_PRINT_DIRECTION:I = 0x13c

.field private static final KEY_EX_COMMAND_PARA_PRIORITY:I = 0x12f

.field private static final KEY_EX_COMMAND_PARA_RELATIVE_POSITION:I = 0x131

.field private static final KEY_EX_COMMAND_PARA_ROW:I = 0x157

.field private static final KEY_EX_COMMAND_PARA_ROW_608:I = 0x169

.field private static final KEY_EX_COMMAND_PARA_ROW_COUNT:I = 0x134

.field private static final KEY_EX_COMMAND_PARA_ROW_LOCK:I = 0x136

.field private static final KEY_EX_COMMAND_PARA_SCROLL_DIRECTION:I = 0x13d

.field private static final KEY_EX_COMMAND_PARA_TENTHS_SECONDS:I = 0x15f

.field private static final KEY_EX_COMMAND_PARA_TEXT_TAG:I = 0x14d

.field private static final KEY_EX_COMMAND_PARA_UNDERLINE:I = 0x150

.field private static final KEY_EX_COMMAND_PARA_VISIBLE:I = 0x138

.field private static final KEY_EX_COMMAND_PARA_WINDOW_ID:I = 0x12d

.field private static final KEY_EX_COMMAND_PARA_WINDOW_MAP:I = 0x12e

.field private static final KEY_EX_COMMAND_PARA_WINDOW_STYLE_ID:I = 0x139

.field private static final KEY_EX_COMMAND_PARA_WORDRAP:I = 0x13e

.field public static final KEY_EX_COMMAND_RESET:I = 0xdf

.field public static final KEY_EX_COMMAND_RESUME_CAPTION_LOADING:I = 0x66

.field public static final KEY_EX_COMMAND_RESUME_TEXT_DISPLAY:I = 0x71

.field public static final KEY_EX_COMMAND_ROLLUP2:I = 0x6b

.field public static final KEY_EX_COMMAND_ROLLUP3:I = 0x6c

.field public static final KEY_EX_COMMAND_ROLLUP4:I = 0x6d

.field public static final KEY_EX_COMMAND_SET_CURRENT_WINDOW:I = 0xc9

.field public static final KEY_EX_COMMAND_SET_PEN_ATTRIBUTE:I = 0xd3

.field public static final KEY_EX_COMMAND_SET_PEN_COLOR:I = 0xd4

.field public static final KEY_EX_COMMAND_SET_PEN_LOCATION:I = 0xd5

.field public static final KEY_EX_COMMAND_SET_WINDOW_ATTRIBUTE:I = 0xd0

.field public static final KEY_EX_COMMAND_TAB_OFFSET1:I = 0x68

.field public static final KEY_EX_COMMAND_TAB_OFFSET2:I = 0x69

.field public static final KEY_EX_COMMAND_TAB_OFFSET3:I = 0x6a

.field public static final KEY_EX_COMMAND_TEXT_ATTR:I = 0x73

.field public static final KEY_EX_COMMAND_TOGGLE_WINDOWS:I = 0xcf

.field public static final KEY_EX_DATA:I = 0xa

.field private static final KEY_EX_GLOBAL_SETTING:I = 0x191

.field public static final KEY_EX_HEIGHT:I = 0x8

.field public static final KEY_EX_LANGUAGE:I = 0x4

.field public static final KEY_EX_LANGUAGE_COUNT:I = 0x3

.field private static final KEY_EX_LOCAL_SETTING:I = 0x192

.field public static final KEY_EX_MAX_SERVICE_NUM:I = 0xc

.field public static final KEY_EX_MEDIA_MIMETYPE:I = 0x1

.field public static final KEY_EX_SERVICE_NUM:I = 0xb

.field public static final KEY_EX_START_TIME_MS:I = 0x2

.field public static final KEY_EX_STRUCT_TEXT_POS:I = 0x7

.field public static final KEY_EX_TEXT:I = 0x5

.field public static final KEY_EX_WIDTH:I = 0x9

.field private static final LAST_PRIVATE_KEY:I = 0x192

.field private static final LAST_PUBLIC_KEY:I = 0xe8

.field private static final SERVICE_COUNT:I = 0x44

.field private static final SERVICE_COUNT_CEA608:I = 0x4

.field private static final SERVICE_COUNT_CEA708:I = 0x40

.field private static final TAG:Ljava/lang/String; = "TimedTextEx"


# instance fields
.field private mBackspace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Backspace;",
            ">;"
        }
    .end annotation
.end field

.field private mCR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$CarriageReturn;",
            ">;"
        }
    .end annotation
.end field

.field private mClearWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$ClearWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private mDefineWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$DefineWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mDelWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$DeleteWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Delay;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayCancel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$DelayCancel;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$DisplayWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mEndofCaption:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$EndOfCaption;",
            ">;"
        }
    .end annotation
.end field

.field private mEraseDisMem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$EraseDisplayMemory;",
            ">;"
        }
    .end annotation
.end field

.field private mEraseNonDisMem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$EraseNondisplayMemory;",
            ">;"
        }
    .end annotation
.end field

.field private mFormFeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$FormFeed;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mHideWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$HideWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalCarriageReturn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$HorizontalCarriageReturn;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageCount:I

.field private final mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeTypeChars:Ljava/lang/String;

.field private mPreambleAdressCode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$PreambleAdressCode;",
            ">;"
        }
    .end annotation
.end field

.field private mReset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Reset;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeCaption:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$ResumeCaptionLoading;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeTextDis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$ResumeTextDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Rollup2;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Rollup3;",
            ">;"
        }
    .end annotation
.end field

.field private mRollup4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$Rollup4;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceNumberList:[I

.field private mServiceNumberMax:I

.field private mSetCurWin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$SetCurrentWindow;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$SetPenAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$SetPenColor;",
            ">;"
        }
    .end annotation
.end field

.field private mSetPenLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$SetPenLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mSetWinAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$SetWindowAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeMs:I

.field private mTapOffset1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$TapOffset1;",
            ">;"
        }
    .end annotation
.end field

.field private mTapOffset2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$TapOffset2;",
            ">;"
        }
    .end annotation
.end field

.field private mTapOffset3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$TapOffset3;",
            ">;"
        }
    .end annotation
.end field

.field private mTextAttribute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private final mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/TimedTextEx$ToggleWindows;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    .line 167
    iput v2, p0, Landroid/media/TimedTextEx;->mServiceNumberMax:I

    .line 171
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/TimedTextEx;->mServiceNumberList:[I

    .line 172
    iput-object v1, p0, Landroid/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    .line 173
    iput v2, p0, Landroid/media/TimedTextEx;->mHeight:I

    .line 174
    iput v2, p0, Landroid/media/TimedTextEx;->mWidth:I

    .line 176
    iput-object v1, p0, Landroid/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 177
    iput v3, p0, Landroid/media/TimedTextEx;->mStartTimeMs:I

    .line 178
    iput v3, p0, Landroid/media/TimedTextEx;->mLanguageCount:I

    .line 179
    iput v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    .line 181
    iput-object v1, p0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 182
    iput-object v1, p0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 183
    iput-object v1, p0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 184
    iput-object v1, p0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 185
    iput-object v1, p0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 192
    iput-object v1, p0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 194
    iput-object v1, p0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 195
    iput-object v1, p0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 197
    iput-object v1, p0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 198
    iput-object v1, p0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 199
    iput-object v1, p0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 200
    iput-object v1, p0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 201
    iput-object v1, p0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 202
    iput-object v1, p0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 203
    iput-object v1, p0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 204
    iput-object v1, p0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 205
    iput-object v1, p0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 206
    iput-object v1, p0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 207
    iput-object v1, p0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 208
    iput-object v1, p0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 209
    iput-object v1, p0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 210
    iput-object v1, p0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 211
    iput-object v1, p0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 212
    iput-object v1, p0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 1120
    return-void
.end method

.method private containsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 2269
    const-string v0, "TimedTextEx"

    const-string v1, "containsKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2271
    const/4 v0, 0x1

    .line 2273
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getInstance(Landroid/media/TimedText;)Landroid/media/TimedTextEx;
    .registers 2
    .param p0, "obj"    # Landroid/media/TimedText;

    .prologue
    .line 2293
    invoke-static {p0}, Landroid/media/TimedTextEx$MethodOverride;->ajc$interFieldGetDispatch$android_media_TimedTextEx$MethodOverride$android_media_TimedText$mTimedText(Landroid/media/TimedText;)Landroid/media/TimedTextEx;

    move-result-object v0

    return-object v0
.end method

.method private initCommand()V
    .registers 44

    .prologue
    .line 1608
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    if-gtz v5, :cond_7

    .line 1859
    :cond_6
    return-void

    .line 1612
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    if-nez v5, :cond_28

    .line 1613
    new-instance v24, Landroid/media/TimedTextEx$EraseDisplayMemory;

    const/4 v5, -0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$EraseDisplayMemory;-><init>(I)V

    .line 1614
    .local v24, "eraseDisMem":Landroid/media/TimedTextEx$EraseDisplayMemory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 1615
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_20
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_42d

    .line 1620
    .end local v24    # "eraseDisMem":Landroid/media/TimedTextEx$EraseDisplayMemory;
    .end local v28    # "i":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    if-nez v5, :cond_49

    .line 1621
    new-instance v31, Landroid/media/TimedTextEx$ResumeCaptionLoading;

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$ResumeCaptionLoading;-><init>(I)V

    .line 1622
    .local v31, "resumeCaption":Landroid/media/TimedTextEx$ResumeCaptionLoading;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 1623
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_41
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_43a

    .line 1628
    .end local v28    # "i":I
    .end local v31    # "resumeCaption":Landroid/media/TimedTextEx$ResumeCaptionLoading;
    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    if-nez v5, :cond_6a

    .line 1629
    new-instance v23, Landroid/media/TimedTextEx$EndOfCaption;

    const/4 v5, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$EndOfCaption;-><init>(I)V

    .line 1630
    .local v23, "endofCaption":Landroid/media/TimedTextEx$EndOfCaption;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 1631
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_62
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_447

    .line 1636
    .end local v23    # "endofCaption":Landroid/media/TimedTextEx$EndOfCaption;
    .end local v28    # "i":I
    :cond_6a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    if-nez v5, :cond_8b

    .line 1637
    new-instance v38, Landroid/media/TimedTextEx$TapOffset1;

    const/4 v5, -0x1

    move-object/from16 v0, v38

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$TapOffset1;-><init>(I)V

    .line 1638
    .local v38, "tapOffset1":Landroid/media/TimedTextEx$TapOffset1;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 1639
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_83
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_454

    .line 1644
    .end local v28    # "i":I
    .end local v38    # "tapOffset1":Landroid/media/TimedTextEx$TapOffset1;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    if-nez v5, :cond_ac

    .line 1645
    new-instance v39, Landroid/media/TimedTextEx$TapOffset2;

    const/4 v5, -0x1

    move-object/from16 v0, v39

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$TapOffset2;-><init>(I)V

    .line 1646
    .local v39, "tapOffset2":Landroid/media/TimedTextEx$TapOffset2;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 1647
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_a4
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_461

    .line 1652
    .end local v28    # "i":I
    .end local v39    # "tapOffset2":Landroid/media/TimedTextEx$TapOffset2;
    :cond_ac
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    if-nez v5, :cond_cd

    .line 1653
    new-instance v40, Landroid/media/TimedTextEx$TapOffset3;

    const/4 v5, -0x1

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$TapOffset3;-><init>(I)V

    .line 1654
    .local v40, "tapOffset3":Landroid/media/TimedTextEx$TapOffset3;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 1655
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_c5
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_46e

    .line 1660
    .end local v28    # "i":I
    .end local v40    # "tapOffset3":Landroid/media/TimedTextEx$TapOffset3;
    :cond_cd
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    if-nez v5, :cond_ee

    .line 1661
    new-instance v33, Landroid/media/TimedTextEx$Rollup2;

    const/4 v5, -0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Rollup2;-><init>(I)V

    .line 1662
    .local v33, "rollup2":Landroid/media/TimedTextEx$Rollup2;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 1663
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_e6
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_47b

    .line 1668
    .end local v28    # "i":I
    .end local v33    # "rollup2":Landroid/media/TimedTextEx$Rollup2;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    if-nez v5, :cond_10f

    .line 1669
    new-instance v34, Landroid/media/TimedTextEx$Rollup3;

    const/4 v5, -0x1

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Rollup3;-><init>(I)V

    .line 1670
    .local v34, "rollup3":Landroid/media/TimedTextEx$Rollup3;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 1671
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_107
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_488

    .line 1676
    .end local v28    # "i":I
    .end local v34    # "rollup3":Landroid/media/TimedTextEx$Rollup3;
    :cond_10f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    if-nez v5, :cond_130

    .line 1677
    new-instance v35, Landroid/media/TimedTextEx$Rollup4;

    const/4 v5, -0x1

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Rollup4;-><init>(I)V

    .line 1678
    .local v35, "rollup4":Landroid/media/TimedTextEx$Rollup4;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 1679
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_128
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_495

    .line 1684
    .end local v28    # "i":I
    .end local v35    # "rollup4":Landroid/media/TimedTextEx$Rollup4;
    :cond_130
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    if-nez v5, :cond_14f

    .line 1685
    new-instance v15, Landroid/media/TimedTextEx$CarriageReturn;

    const/4 v5, -0x1

    invoke-direct {v15, v5}, Landroid/media/TimedTextEx$CarriageReturn;-><init>(I)V

    .line 1686
    .local v15, "CR":Landroid/media/TimedTextEx$CarriageReturn;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 1687
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_147
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4a2

    .line 1692
    .end local v15    # "CR":Landroid/media/TimedTextEx$CarriageReturn;
    .end local v28    # "i":I
    :cond_14f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    if-nez v5, :cond_170

    .line 1693
    new-instance v25, Landroid/media/TimedTextEx$EraseNondisplayMemory;

    const/4 v5, -0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$EraseNondisplayMemory;-><init>(I)V

    .line 1694
    .local v25, "eraseNonDisMem":Landroid/media/TimedTextEx$EraseNondisplayMemory;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 1695
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_168
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4ad

    .line 1700
    .end local v25    # "eraseNonDisMem":Landroid/media/TimedTextEx$EraseNondisplayMemory;
    .end local v28    # "i":I
    :cond_170
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    if-nez v5, :cond_191

    .line 1701
    new-instance v17, Landroid/media/TimedTextEx$Backspace;

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Backspace;-><init>(I)V

    .line 1702
    .local v17, "backSpace":Landroid/media/TimedTextEx$Backspace;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 1703
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_189
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4ba

    .line 1708
    .end local v17    # "backSpace":Landroid/media/TimedTextEx$Backspace;
    .end local v28    # "i":I
    :cond_191
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    if-nez v5, :cond_1b2

    .line 1709
    new-instance v32, Landroid/media/TimedTextEx$ResumeTextDisplay;

    const/4 v5, -0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$ResumeTextDisplay;-><init>(I)V

    .line 1710
    .local v32, "resumeTextDis":Landroid/media/TimedTextEx$ResumeTextDisplay;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 1711
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_1aa
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4c7

    .line 1716
    .end local v28    # "i":I
    .end local v32    # "resumeTextDis":Landroid/media/TimedTextEx$ResumeTextDisplay;
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    if-nez v5, :cond_1d6

    .line 1717
    new-instance v29, Landroid/media/TimedTextEx$PreambleAdressCode;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/media/TimedTextEx$PreambleAdressCode;-><init>(IIII)V

    .line 1718
    .local v29, "preambleAdressCode":Landroid/media/TimedTextEx$PreambleAdressCode;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 1719
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_1ce
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4d4

    .line 1724
    .end local v28    # "i":I
    .end local v29    # "preambleAdressCode":Landroid/media/TimedTextEx$PreambleAdressCode;
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_1f8

    .line 1725
    new-instance v41, Landroid/media/TimedTextEx$TextAttribute;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v6}, Landroid/media/TimedTextEx$TextAttribute;-><init>(II)V

    .line 1726
    .local v41, "textAttribute":Landroid/media/TimedTextEx$TextAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 1727
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_1f0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4e1

    .line 1732
    .end local v28    # "i":I
    .end local v41    # "textAttribute":Landroid/media/TimedTextEx$TextAttribute;
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    if-nez v5, :cond_219

    .line 1733
    new-instance v36, Landroid/media/TimedTextEx$SetCurrentWindow;

    const/4 v5, -0x1

    move-object/from16 v0, v36

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$SetCurrentWindow;-><init>(I)V

    .line 1734
    .local v36, "setCurWin":Landroid/media/TimedTextEx$SetCurrentWindow;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 1735
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_211
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4ee

    .line 1740
    .end local v28    # "i":I
    .end local v36    # "setCurWin":Landroid/media/TimedTextEx$SetCurrentWindow;
    :cond_219
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    if-nez v5, :cond_23a

    .line 1741
    new-instance v19, Landroid/media/TimedTextEx$ClearWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$ClearWindows;-><init>(I)V

    .line 1742
    .local v19, "clearWins":Landroid/media/TimedTextEx$ClearWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 1743
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_232
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_4fb

    .line 1748
    .end local v19    # "clearWins":Landroid/media/TimedTextEx$ClearWindows;
    .end local v28    # "i":I
    :cond_23a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    if-nez v5, :cond_265

    .line 1749
    new-instance v1, Landroid/media/TimedTextEx$DefineWindow;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct/range {v1 .. v14}, Landroid/media/TimedTextEx$DefineWindow;-><init>(IIIIIIIIIIIII)V

    .line 1750
    .local v1, "defineWin":Landroid/media/TimedTextEx$DefineWindow;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 1751
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_25d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_508

    .line 1756
    .end local v1    # "defineWin":Landroid/media/TimedTextEx$DefineWindow;
    .end local v28    # "i":I
    :cond_265
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    if-nez v5, :cond_286

    .line 1757
    new-instance v21, Landroid/media/TimedTextEx$DeleteWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$DeleteWindows;-><init>(I)V

    .line 1758
    .local v21, "delWins":Landroid/media/TimedTextEx$DeleteWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 1759
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_27e
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_513

    .line 1764
    .end local v21    # "delWins":Landroid/media/TimedTextEx$DeleteWindows;
    .end local v28    # "i":I
    :cond_286
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    if-nez v5, :cond_2a7

    .line 1765
    new-instance v22, Landroid/media/TimedTextEx$DisplayWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$DisplayWindows;-><init>(I)V

    .line 1766
    .local v22, "displayWins":Landroid/media/TimedTextEx$DisplayWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 1767
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_29f
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_520

    .line 1772
    .end local v22    # "displayWins":Landroid/media/TimedTextEx$DisplayWindows;
    .end local v28    # "i":I
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    if-nez v5, :cond_2c8

    .line 1773
    new-instance v26, Landroid/media/TimedTextEx$HideWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$HideWindows;-><init>(I)V

    .line 1774
    .local v26, "hideWins":Landroid/media/TimedTextEx$HideWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 1775
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_2c0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_52d

    .line 1780
    .end local v26    # "hideWins":Landroid/media/TimedTextEx$HideWindows;
    .end local v28    # "i":I
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    if-nez v5, :cond_2e9

    .line 1781
    new-instance v42, Landroid/media/TimedTextEx$ToggleWindows;

    const/4 v5, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$ToggleWindows;-><init>(I)V

    .line 1782
    .local v42, "toggleWins":Landroid/media/TimedTextEx$ToggleWindows;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 1783
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_2e1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_53a

    .line 1788
    .end local v28    # "i":I
    .end local v42    # "toggleWins":Landroid/media/TimedTextEx$ToggleWindows;
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_312

    .line 1789
    new-instance v2, Landroid/media/TimedTextEx$SetWindowAttribute;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct/range {v2 .. v13}, Landroid/media/TimedTextEx$SetWindowAttribute;-><init>(IIIIIIIIIII)V

    .line 1790
    .local v2, "setWinAttribute":Landroid/media/TimedTextEx$SetWindowAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 1791
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_30a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_547

    .line 1796
    .end local v2    # "setWinAttribute":Landroid/media/TimedTextEx$SetWindowAttribute;
    .end local v28    # "i":I
    :cond_312
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    if-nez v5, :cond_337

    .line 1797
    new-instance v3, Landroid/media/TimedTextEx$SetPenAttribute;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v3 .. v10}, Landroid/media/TimedTextEx$SetPenAttribute;-><init>(IIIIIII)V

    .line 1798
    .local v3, "setPenAttribute":Landroid/media/TimedTextEx$SetPenAttribute;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 1799
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_32f
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_552

    .line 1804
    .end local v3    # "setPenAttribute":Landroid/media/TimedTextEx$SetPenAttribute;
    .end local v28    # "i":I
    :cond_337
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    if-nez v5, :cond_35a

    .line 1805
    new-instance v4, Landroid/media/TimedTextEx$SetPenColor;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v4 .. v9}, Landroid/media/TimedTextEx$SetPenColor;-><init>(IIIII)V

    .line 1806
    .local v4, "setPenColor":Landroid/media/TimedTextEx$SetPenColor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 1807
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_352
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_55d

    .line 1812
    .end local v4    # "setPenColor":Landroid/media/TimedTextEx$SetPenColor;
    .end local v28    # "i":I
    :cond_35a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    if-nez v5, :cond_37c

    .line 1813
    new-instance v37, Landroid/media/TimedTextEx$SetPenLocation;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v37

    invoke-direct {v0, v5, v6}, Landroid/media/TimedTextEx$SetPenLocation;-><init>(II)V

    .line 1814
    .local v37, "setPenLocation":Landroid/media/TimedTextEx$SetPenLocation;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 1815
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_374
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_568

    .line 1820
    .end local v28    # "i":I
    .end local v37    # "setPenLocation":Landroid/media/TimedTextEx$SetPenLocation;
    :cond_37c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    if-nez v5, :cond_39d

    .line 1821
    new-instance v20, Landroid/media/TimedTextEx$Delay;

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Delay;-><init>(I)V

    .line 1822
    .local v20, "d":Landroid/media/TimedTextEx$Delay;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 1823
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_395
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_575

    .line 1828
    .end local v20    # "d":Landroid/media/TimedTextEx$Delay;
    .end local v28    # "i":I
    :cond_39d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    if-nez v5, :cond_3be

    .line 1829
    new-instance v18, Landroid/media/TimedTextEx$DelayCancel;

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$DelayCancel;-><init>(I)V

    .line 1830
    .local v18, "cancel":Landroid/media/TimedTextEx$DelayCancel;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 1831
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_3b6
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_582

    .line 1836
    .end local v18    # "cancel":Landroid/media/TimedTextEx$DelayCancel;
    .end local v28    # "i":I
    :cond_3be
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    if-nez v5, :cond_3df

    .line 1837
    new-instance v30, Landroid/media/TimedTextEx$Reset;

    const/4 v5, -0x1

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$Reset;-><init>(I)V

    .line 1838
    .local v30, "r":Landroid/media/TimedTextEx$Reset;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 1839
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_3d7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_58f

    .line 1844
    .end local v28    # "i":I
    .end local v30    # "r":Landroid/media/TimedTextEx$Reset;
    :cond_3df
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    if-nez v5, :cond_400

    .line 1845
    new-instance v27, Landroid/media/TimedTextEx$HorizontalCarriageReturn;

    const/4 v5, -0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$HorizontalCarriageReturn;-><init>(I)V

    .line 1846
    .local v27, "horizontalCarriageReturn":Landroid/media/TimedTextEx$HorizontalCarriageReturn;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 1847
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_3f8
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-lt v0, v5, :cond_59c

    .line 1852
    .end local v27    # "horizontalCarriageReturn":Landroid/media/TimedTextEx$HorizontalCarriageReturn;
    .end local v28    # "i":I
    :cond_400
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 1853
    new-instance v16, Landroid/media/TimedTextEx$FormFeed;

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/media/TimedTextEx$FormFeed;-><init>(I)V

    .line 1854
    .local v16, "FF":Landroid/media/TimedTextEx$FormFeed;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 1855
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_419
    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v0, v28

    if-ge v0, v5, :cond_6

    .line 1856
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    add-int/lit8 v28, v28, 0x1

    goto :goto_419

    .line 1616
    .end local v16    # "FF":Landroid/media/TimedTextEx$FormFeed;
    .restart local v24    # "eraseDisMem":Landroid/media/TimedTextEx$EraseDisplayMemory;
    :cond_42d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_20

    .line 1624
    .end local v24    # "eraseDisMem":Landroid/media/TimedTextEx$EraseDisplayMemory;
    .restart local v31    # "resumeCaption":Landroid/media/TimedTextEx$ResumeCaptionLoading;
    :cond_43a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_41

    .line 1632
    .end local v31    # "resumeCaption":Landroid/media/TimedTextEx$ResumeCaptionLoading;
    .restart local v23    # "endofCaption":Landroid/media/TimedTextEx$EndOfCaption;
    :cond_447
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_62

    .line 1640
    .end local v23    # "endofCaption":Landroid/media/TimedTextEx$EndOfCaption;
    .restart local v38    # "tapOffset1":Landroid/media/TimedTextEx$TapOffset1;
    :cond_454
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_83

    .line 1648
    .end local v38    # "tapOffset1":Landroid/media/TimedTextEx$TapOffset1;
    .restart local v39    # "tapOffset2":Landroid/media/TimedTextEx$TapOffset2;
    :cond_461
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_a4

    .line 1656
    .end local v39    # "tapOffset2":Landroid/media/TimedTextEx$TapOffset2;
    .restart local v40    # "tapOffset3":Landroid/media/TimedTextEx$TapOffset3;
    :cond_46e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_c5

    .line 1664
    .end local v40    # "tapOffset3":Landroid/media/TimedTextEx$TapOffset3;
    .restart local v33    # "rollup2":Landroid/media/TimedTextEx$Rollup2;
    :cond_47b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_e6

    .line 1672
    .end local v33    # "rollup2":Landroid/media/TimedTextEx$Rollup2;
    .restart local v34    # "rollup3":Landroid/media/TimedTextEx$Rollup3;
    :cond_488
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_107

    .line 1680
    .end local v34    # "rollup3":Landroid/media/TimedTextEx$Rollup3;
    .restart local v35    # "rollup4":Landroid/media/TimedTextEx$Rollup4;
    :cond_495
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_128

    .line 1688
    .end local v35    # "rollup4":Landroid/media/TimedTextEx$Rollup4;
    .restart local v15    # "CR":Landroid/media/TimedTextEx$CarriageReturn;
    :cond_4a2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_147

    .line 1696
    .end local v15    # "CR":Landroid/media/TimedTextEx$CarriageReturn;
    .restart local v25    # "eraseNonDisMem":Landroid/media/TimedTextEx$EraseNondisplayMemory;
    :cond_4ad
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_168

    .line 1704
    .end local v25    # "eraseNonDisMem":Landroid/media/TimedTextEx$EraseNondisplayMemory;
    .restart local v17    # "backSpace":Landroid/media/TimedTextEx$Backspace;
    :cond_4ba
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_189

    .line 1712
    .end local v17    # "backSpace":Landroid/media/TimedTextEx$Backspace;
    .restart local v32    # "resumeTextDis":Landroid/media/TimedTextEx$ResumeTextDisplay;
    :cond_4c7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1aa

    .line 1720
    .end local v32    # "resumeTextDis":Landroid/media/TimedTextEx$ResumeTextDisplay;
    .restart local v29    # "preambleAdressCode":Landroid/media/TimedTextEx$PreambleAdressCode;
    :cond_4d4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1ce

    .line 1728
    .end local v29    # "preambleAdressCode":Landroid/media/TimedTextEx$PreambleAdressCode;
    .restart local v41    # "textAttribute":Landroid/media/TimedTextEx$TextAttribute;
    :cond_4e1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1f0

    .line 1736
    .end local v41    # "textAttribute":Landroid/media/TimedTextEx$TextAttribute;
    .restart local v36    # "setCurWin":Landroid/media/TimedTextEx$SetCurrentWindow;
    :cond_4ee
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_211

    .line 1744
    .end local v36    # "setCurWin":Landroid/media/TimedTextEx$SetCurrentWindow;
    .restart local v19    # "clearWins":Landroid/media/TimedTextEx$ClearWindows;
    :cond_4fb
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_232

    .line 1752
    .end local v19    # "clearWins":Landroid/media/TimedTextEx$ClearWindows;
    .restart local v1    # "defineWin":Landroid/media/TimedTextEx$DefineWindow;
    :cond_508
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_25d

    .line 1760
    .end local v1    # "defineWin":Landroid/media/TimedTextEx$DefineWindow;
    .restart local v21    # "delWins":Landroid/media/TimedTextEx$DeleteWindows;
    :cond_513
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_27e

    .line 1768
    .end local v21    # "delWins":Landroid/media/TimedTextEx$DeleteWindows;
    .restart local v22    # "displayWins":Landroid/media/TimedTextEx$DisplayWindows;
    :cond_520
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_29f

    .line 1776
    .end local v22    # "displayWins":Landroid/media/TimedTextEx$DisplayWindows;
    .restart local v26    # "hideWins":Landroid/media/TimedTextEx$HideWindows;
    :cond_52d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2c0

    .line 1784
    .end local v26    # "hideWins":Landroid/media/TimedTextEx$HideWindows;
    .restart local v42    # "toggleWins":Landroid/media/TimedTextEx$ToggleWindows;
    :cond_53a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2e1

    .line 1792
    .end local v42    # "toggleWins":Landroid/media/TimedTextEx$ToggleWindows;
    .restart local v2    # "setWinAttribute":Landroid/media/TimedTextEx$SetWindowAttribute;
    :cond_547
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_30a

    .line 1800
    .end local v2    # "setWinAttribute":Landroid/media/TimedTextEx$SetWindowAttribute;
    .restart local v3    # "setPenAttribute":Landroid/media/TimedTextEx$SetPenAttribute;
    :cond_552
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_32f

    .line 1808
    .end local v3    # "setPenAttribute":Landroid/media/TimedTextEx$SetPenAttribute;
    .restart local v4    # "setPenColor":Landroid/media/TimedTextEx$SetPenColor;
    :cond_55d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_352

    .line 1816
    .end local v4    # "setPenColor":Landroid/media/TimedTextEx$SetPenColor;
    .restart local v37    # "setPenLocation":Landroid/media/TimedTextEx$SetPenLocation;
    :cond_568
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_374

    .line 1824
    .end local v37    # "setPenLocation":Landroid/media/TimedTextEx$SetPenLocation;
    .restart local v20    # "d":Landroid/media/TimedTextEx$Delay;
    :cond_575
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_395

    .line 1832
    .end local v20    # "d":Landroid/media/TimedTextEx$Delay;
    .restart local v18    # "cancel":Landroid/media/TimedTextEx$DelayCancel;
    :cond_582
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3b6

    .line 1840
    .end local v18    # "cancel":Landroid/media/TimedTextEx$DelayCancel;
    .restart local v30    # "r":Landroid/media/TimedTextEx$Reset;
    :cond_58f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3d7

    .line 1848
    .end local v30    # "r":Landroid/media/TimedTextEx$Reset;
    .restart local v27    # "horizontalCarriageReturn":Landroid/media/TimedTextEx$HorizontalCarriageReturn;
    :cond_59c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1847
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3f8
.end method

.method private isValidKey(I)Z
    .registers 5
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x1

    .line 2254
    const-string v1, "TimedTextEx"

    const-string v2, "isValidKey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    if-lt p1, v0, :cond_e

    const/16 v1, 0xe8

    if-le p1, v1, :cond_17

    .line 2256
    :cond_e
    const/16 v1, 0x12d

    if-lt p1, v1, :cond_16

    const/16 v1, 0x192

    if-le p1, v1, :cond_17

    .line 2257
    :cond_16
    const/4 v0, 0x0

    .line 2259
    :cond_17
    return v0
.end method

.method private readCommand(Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 1416
    const/4 v1, 0x0

    .line 1417
    .local v1, "key":I
    const/4 v0, 0x0

    .line 1418
    .local v0, "dataPosition":I
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-gtz v4, :cond_a

    .line 1604
    :goto_9
    return v3

    .line 1419
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1421
    invoke-direct {p0, v1}, Landroid/media/TimedTextEx;->isValidKey(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 1422
    const-string v3, "TimedTextEx"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readCommand / Invalid timed text ex key found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v3, 0x0

    goto :goto_9

    .line 1425
    :cond_2e
    const/16 v4, 0xc

    if-ne v1, v4, :cond_4a

    .line 1426
    const-string v4, "TimedTextEx"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "readCommand / KEY_EX_MAX_SERVICE_NUM found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9

    .line 1431
    :cond_4a
    const/4 v2, 0x0

    .line 1433
    .local v2, "object":Ljava/lang/Object;
    sparse-switch v1, :sswitch_data_138

    .line 1595
    .end local v2    # "object":Ljava/lang/Object;
    :goto_4e
    if-eqz v2, :cond_3

    .line 1596
    iget-object v4, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1597
    iget-object v4, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    :cond_65
    iget-object v4, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1435
    .restart local v2    # "object":Ljava/lang/Object;
    :sswitch_6f
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_EraseDisplayMemory()V

    .line 1436
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    .line 1437
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1440
    .local v2, "object":Ljava/lang/Object;
    :sswitch_75
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_ResumeCaptionLoading()V

    .line 1441
    iget-object v2, p0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    .line 1442
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1445
    .local v2, "object":Ljava/lang/Object;
    :sswitch_7b
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_EndOfCaption()V

    .line 1446
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    .line 1447
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1450
    .local v2, "object":Ljava/lang/Object;
    :sswitch_81
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_TapOffset1()V

    .line 1451
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    .line 1452
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1455
    .local v2, "object":Ljava/lang/Object;
    :sswitch_87
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_TapOffset2()V

    .line 1456
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    .line 1457
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1460
    .local v2, "object":Ljava/lang/Object;
    :sswitch_8d
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_TapOffset3()V

    .line 1461
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    .line 1462
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1465
    .local v2, "object":Ljava/lang/Object;
    :sswitch_93
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_Rollup2()V

    .line 1466
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    .line 1467
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1470
    .local v2, "object":Ljava/lang/Object;
    :sswitch_99
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_Rollup3()V

    .line 1471
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    .line 1472
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1475
    .local v2, "object":Ljava/lang/Object;
    :sswitch_9f
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_Rollup4()V

    .line 1476
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    .line 1477
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1480
    .local v2, "object":Ljava/lang/Object;
    :sswitch_a5
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_CarriageReturn()V

    .line 1481
    iget-object v2, p0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    .line 1482
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1485
    .local v2, "object":Ljava/lang/Object;
    :sswitch_ab
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_EraseNondisplayMemory()V

    .line 1486
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    .line 1487
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1490
    .local v2, "object":Ljava/lang/Object;
    :sswitch_b1
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_Backspace()V

    .line 1491
    iget-object v2, p0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    .line 1492
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1495
    .local v2, "object":Ljava/lang/Object;
    :sswitch_b7
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_ResumeTextDisplay()V

    .line 1496
    iget-object v2, p0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    .line 1497
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1500
    .local v2, "object":Ljava/lang/Object;
    :sswitch_bd
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_PreambleAdressCode(Landroid/os/Parcel;)V

    .line 1501
    iget-object v2, p0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    .line 1502
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1505
    .local v2, "object":Ljava/lang/Object;
    :sswitch_c3
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_TextAttribute(Landroid/os/Parcel;)V

    .line 1506
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    .line 1507
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1510
    .local v2, "object":Ljava/lang/Object;
    :sswitch_c9
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_SetCurrentWindow(Landroid/os/Parcel;)V

    .line 1511
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    .line 1512
    .local v2, "object":Ljava/util/ArrayList;
    goto :goto_4e

    .line 1515
    .local v2, "object":Ljava/lang/Object;
    :sswitch_cf
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_ClearWindows(Landroid/os/Parcel;)V

    .line 1516
    iget-object v2, p0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    .line 1517
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1520
    .local v2, "object":Ljava/lang/Object;
    :sswitch_d6
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_DefineWindow(Landroid/os/Parcel;)V

    .line 1521
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    .line 1522
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1525
    .local v2, "object":Ljava/lang/Object;
    :sswitch_dd
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_DeleteWindows(Landroid/os/Parcel;)V

    .line 1526
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    .line 1527
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1530
    .local v2, "object":Ljava/lang/Object;
    :sswitch_e4
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_DisplayWindows(Landroid/os/Parcel;)V

    .line 1531
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    .line 1532
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1535
    .local v2, "object":Ljava/lang/Object;
    :sswitch_eb
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_HideWindows(Landroid/os/Parcel;)V

    .line 1536
    iget-object v2, p0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    .line 1537
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1540
    .local v2, "object":Ljava/lang/Object;
    :sswitch_f2
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_ToggleWindows(Landroid/os/Parcel;)V

    .line 1541
    iget-object v2, p0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    .line 1542
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1546
    .local v2, "object":Ljava/lang/Object;
    :sswitch_f9
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_SetWindowAttribute(Landroid/os/Parcel;)V

    .line 1547
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    .line 1548
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1551
    .local v2, "object":Ljava/lang/Object;
    :sswitch_100
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_SetPenAttribute(Landroid/os/Parcel;)V

    .line 1552
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    .line 1553
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1556
    .local v2, "object":Ljava/lang/Object;
    :sswitch_107
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_SetPenColor(Landroid/os/Parcel;)V

    .line 1557
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    .line 1558
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1561
    .local v2, "object":Ljava/lang/Object;
    :sswitch_10e
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_SetPenLocation(Landroid/os/Parcel;)V

    .line 1562
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    .line 1563
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1566
    .local v2, "object":Ljava/lang/Object;
    :sswitch_115
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->readCommand_Delay(Landroid/os/Parcel;)V

    .line 1567
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    .line 1568
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1571
    .local v2, "object":Ljava/lang/Object;
    :sswitch_11c
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_DelayCancel()V

    .line 1572
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    .line 1573
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1576
    .local v2, "object":Ljava/lang/Object;
    :sswitch_123
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_Reset()V

    .line 1577
    iget-object v2, p0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    .line 1578
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1581
    .local v2, "object":Ljava/lang/Object;
    :sswitch_12a
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_HorizontalCarriageReturn()V

    .line 1582
    iget-object v2, p0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    .line 1583
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1586
    .local v2, "object":Ljava/lang/Object;
    :sswitch_131
    invoke-direct {p0}, Landroid/media/TimedTextEx;->readCommand_FormFeed()V

    .line 1587
    iget-object v2, p0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    .line 1588
    .local v2, "object":Ljava/util/ArrayList;
    goto/16 :goto_4e

    .line 1433
    :sswitch_data_138
    .sparse-switch
        0x65 -> :sswitch_6f
        0x66 -> :sswitch_75
        0x67 -> :sswitch_7b
        0x68 -> :sswitch_81
        0x69 -> :sswitch_87
        0x6a -> :sswitch_8d
        0x6b -> :sswitch_93
        0x6c -> :sswitch_99
        0x6d -> :sswitch_9f
        0x6e -> :sswitch_a5
        0x6f -> :sswitch_ab
        0x70 -> :sswitch_b1
        0x71 -> :sswitch_b7
        0x72 -> :sswitch_bd
        0x73 -> :sswitch_c3
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_cf
        0xcb -> :sswitch_d6
        0xcc -> :sswitch_dd
        0xcd -> :sswitch_e4
        0xce -> :sswitch_eb
        0xcf -> :sswitch_f2
        0xd0 -> :sswitch_f9
        0xd3 -> :sswitch_100
        0xd4 -> :sswitch_107
        0xd5 -> :sswitch_10e
        0xdd -> :sswitch_115
        0xde -> :sswitch_11c
        0xdf -> :sswitch_123
        0xe7 -> :sswitch_12a
        0xe8 -> :sswitch_131
    .end sparse-switch
.end method

.method private readCommand_Backspace()V
    .registers 5

    .prologue
    .line 1986
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Backspace"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 v1, 0x1

    .line 1989
    .local v1, "backspace":I
    new-instance v0, Landroid/media/TimedTextEx$Backspace;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$Backspace;-><init>(I)V

    .line 1990
    .local v0, "backSpace":Landroid/media/TimedTextEx$Backspace;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mBackspace:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method private readCommand_CarriageReturn()V
    .registers 5

    .prologue
    .line 1964
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_CarriageReturn"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/4 v1, 0x1

    .line 1967
    .local v1, "cr":I
    new-instance v0, Landroid/media/TimedTextEx$CarriageReturn;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$CarriageReturn;-><init>(I)V

    .line 1968
    .local v0, "CR":Landroid/media/TimedTextEx$CarriageReturn;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mCR:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1969
    return-void
.end method

.method private readCommand_ClearWindows(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2047
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ClearWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2050
    .local v1, "windowMap":I
    new-instance v0, Landroid/media/TimedTextEx$ClearWindows;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$ClearWindows;-><init>(I)V

    .line 2051
    .local v0, "clearWins":Landroid/media/TimedTextEx$ClearWindows;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mClearWins:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2052
    return-void
.end method

.method private readCommand_DefineWindow(Landroid/os/Parcel;)V
    .registers 19
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2058
    const-string v15, "TimedTextEx"

    const-string v16, "readCommand_DefineWindow"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2061
    .local v2, "windowID":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2062
    .local v3, "priority":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2063
    .local v4, "anchorPoint":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2064
    .local v5, "relativePosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2065
    .local v6, "anchorVertical":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2066
    .local v7, "anchorHorizontal":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2067
    .local v8, "rowCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2068
    .local v9, "columnCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2069
    .local v10, "rowLock":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2070
    .local v11, "columnLock":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2071
    .local v12, "visible":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2072
    .local v13, "windowStyleID":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2074
    .local v14, "penStyleID":I
    new-instance v1, Landroid/media/TimedTextEx$DefineWindow;

    invoke-direct/range {v1 .. v14}, Landroid/media/TimedTextEx$DefineWindow;-><init>(IIIIIIIIIIIII)V

    .line 2076
    .local v1, "defineWin":Landroid/media/TimedTextEx$DefineWindow;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedTextEx;->mDefineWin:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/TimedTextEx;->mIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2077
    return-void
.end method

.method private readCommand_Delay(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2197
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Delay"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2200
    .local v1, "delay":I
    new-instance v0, Landroid/media/TimedTextEx$Delay;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$Delay;-><init>(I)V

    .line 2201
    .local v0, "d":Landroid/media/TimedTextEx$Delay;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelay:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2202
    return-void
.end method

.method private readCommand_DelayCancel()V
    .registers 5

    .prologue
    .line 2208
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DelayCancel"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const/4 v1, 0x1

    .line 2211
    .local v1, "delayCancel":I
    new-instance v0, Landroid/media/TimedTextEx$DelayCancel;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$DelayCancel;-><init>(I)V

    .line 2212
    .local v0, "cancel":Landroid/media/TimedTextEx$DelayCancel;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelayCancel:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2213
    return-void
.end method

.method private readCommand_DeleteWindows(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2083
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DeleteWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2086
    .local v1, "windowMap":I
    new-instance v0, Landroid/media/TimedTextEx$DeleteWindows;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$DeleteWindows;-><init>(I)V

    .line 2087
    .local v0, "delWins":Landroid/media/TimedTextEx$DeleteWindows;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDelWins:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2088
    return-void
.end method

.method private readCommand_DisplayWindows(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2094
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_DisplayWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2097
    .local v1, "windowMap":I
    new-instance v0, Landroid/media/TimedTextEx$DisplayWindows;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$DisplayWindows;-><init>(I)V

    .line 2098
    .local v0, "displayWins":Landroid/media/TimedTextEx$DisplayWindows;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mDisplayWins:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2099
    return-void
.end method

.method private readCommand_EndOfCaption()V
    .registers 5

    .prologue
    .line 1887
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EndOfCaption"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/4 v0, 0x1

    .line 1890
    .local v0, "end":I
    new-instance v1, Landroid/media/TimedTextEx$EndOfCaption;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$EndOfCaption;-><init>(I)V

    .line 1891
    .local v1, "endofCaption":Landroid/media/TimedTextEx$EndOfCaption;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEndofCaption:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1892
    return-void
.end method

.method private readCommand_EraseDisplayMemory()V
    .registers 5

    .prologue
    .line 1865
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EraseDisplayMemory"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/4 v0, 0x1

    .line 1868
    .local v0, "erase":I
    new-instance v1, Landroid/media/TimedTextEx$EraseDisplayMemory;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$EraseDisplayMemory;-><init>(I)V

    .line 1869
    .local v1, "eraseDisMem":Landroid/media/TimedTextEx$EraseDisplayMemory;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEraseDisMem:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1870
    return-void
.end method

.method private readCommand_EraseNondisplayMemory()V
    .registers 5

    .prologue
    .line 1975
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_EraseNondisplayMemory"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v0, 0x1

    .line 1978
    .local v0, "erase":I
    new-instance v1, Landroid/media/TimedTextEx$EraseNondisplayMemory;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$EraseNondisplayMemory;-><init>(I)V

    .line 1979
    .local v1, "eraseNonDisMem":Landroid/media/TimedTextEx$EraseNondisplayMemory;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mEraseNonDisMem:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1980
    return-void
.end method

.method private readCommand_FormFeed()V
    .registers 5

    .prologue
    .line 2241
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_FormFeed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const/4 v1, 0x1

    .line 2244
    .local v1, "formFeed":I
    new-instance v0, Landroid/media/TimedTextEx$FormFeed;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$FormFeed;-><init>(I)V

    .line 2245
    .local v0, "FF":Landroid/media/TimedTextEx$FormFeed;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mFormFeed:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2246
    return-void
.end method

.method private readCommand_HideWindows(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2105
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_HideWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2108
    .local v1, "windowMap":I
    new-instance v0, Landroid/media/TimedTextEx$HideWindows;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$HideWindows;-><init>(I)V

    .line 2109
    .local v0, "hideWins":Landroid/media/TimedTextEx$HideWindows;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mHideWins:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2110
    return-void
.end method

.method private readCommand_HorizontalCarriageReturn()V
    .registers 5

    .prologue
    .line 2230
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_HorizontalCarriageReturn"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v0, 0x1

    .line 2233
    .local v0, "hcr":I
    new-instance v1, Landroid/media/TimedTextEx$HorizontalCarriageReturn;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$HorizontalCarriageReturn;-><init>(I)V

    .line 2234
    .local v1, "horizontalCarriageReturn":Landroid/media/TimedTextEx$HorizontalCarriageReturn;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mHorizontalCarriageReturn:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2235
    return-void
.end method

.method private readCommand_PreambleAdressCode(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2007
    const-string v5, "TimedTextEx"

    const-string v6, "readCommand_PreambleAdressCode"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2010
    .local v4, "row":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2011
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2012
    .local v1, "font":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2014
    .local v2, "indent":I
    new-instance v3, Landroid/media/TimedTextEx$PreambleAdressCode;

    invoke-direct {v3, v4, v0, v1, v2}, Landroid/media/TimedTextEx$PreambleAdressCode;-><init>(IIII)V

    .line 2015
    .local v3, "preambleAdressCode":Landroid/media/TimedTextEx$PreambleAdressCode;
    iget-object v5, p0, Landroid/media/TimedTextEx;->mPreambleAdressCode:Ljava/util/ArrayList;

    iget v6, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2016
    return-void
.end method

.method private readCommand_Reset()V
    .registers 5

    .prologue
    .line 2219
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Reset"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    const/4 v1, 0x1

    .line 2222
    .local v1, "reset":I
    new-instance v0, Landroid/media/TimedTextEx$Reset;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$Reset;-><init>(I)V

    .line 2223
    .local v0, "r":Landroid/media/TimedTextEx$Reset;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mReset:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2224
    return-void
.end method

.method private readCommand_ResumeCaptionLoading()V
    .registers 5

    .prologue
    .line 1876
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ResumeCaptionLoading"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v0, 0x1

    .line 1879
    .local v0, "resume":I
    new-instance v1, Landroid/media/TimedTextEx$ResumeCaptionLoading;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$ResumeCaptionLoading;-><init>(I)V

    .line 1880
    .local v1, "resumeCaption":Landroid/media/TimedTextEx$ResumeCaptionLoading;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mResumeCaption:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1881
    return-void
.end method

.method private readCommand_ResumeTextDisplay()V
    .registers 5

    .prologue
    .line 1996
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ResumeTextDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/4 v0, 0x1

    .line 1999
    .local v0, "resume":I
    new-instance v1, Landroid/media/TimedTextEx$ResumeTextDisplay;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$ResumeTextDisplay;-><init>(I)V

    .line 2000
    .local v1, "resumeTextDis":Landroid/media/TimedTextEx$ResumeTextDisplay;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mResumeTextDis:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2001
    return-void
.end method

.method private readCommand_Rollup2()V
    .registers 5

    .prologue
    .line 1931
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 v0, 0x1

    .line 1934
    .local v0, "rollup":I
    new-instance v1, Landroid/media/TimedTextEx$Rollup2;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$Rollup2;-><init>(I)V

    .line 1935
    .local v1, "rollup2":Landroid/media/TimedTextEx$Rollup2;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup2:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1936
    return-void
.end method

.method private readCommand_Rollup3()V
    .registers 5

    .prologue
    .line 1942
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v0, 0x1

    .line 1945
    .local v0, "rollup":I
    new-instance v1, Landroid/media/TimedTextEx$Rollup3;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$Rollup3;-><init>(I)V

    .line 1946
    .local v1, "rollup3":Landroid/media/TimedTextEx$Rollup3;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup3:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1947
    return-void
.end method

.method private readCommand_Rollup4()V
    .registers 5

    .prologue
    .line 1953
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_Rollup4"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const/4 v0, 0x1

    .line 1956
    .local v0, "rollup":I
    new-instance v1, Landroid/media/TimedTextEx$Rollup4;

    invoke-direct {v1, v0}, Landroid/media/TimedTextEx$Rollup4;-><init>(I)V

    .line 1957
    .local v1, "rollup4":Landroid/media/TimedTextEx$Rollup4;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mRollup4:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1958
    return-void
.end method

.method private readCommand_SetCurrentWindow(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2036
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_SetCurrentWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2039
    .local v1, "windowID":I
    new-instance v0, Landroid/media/TimedTextEx$SetCurrentWindow;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$SetCurrentWindow;-><init>(I)V

    .line 2040
    .local v0, "setCurWin":Landroid/media/TimedTextEx$SetCurrentWindow;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mSetCurWin:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2041
    return-void
.end method

.method private readCommand_SetPenAttribute(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2150
    const-string v8, "TimedTextEx"

    const-string v9, "readCommand_SetPenAttribute"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2153
    .local v1, "penSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2154
    .local v2, "font":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2155
    .local v3, "textTag":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2156
    .local v4, "offSet":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2157
    .local v5, "italics":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2158
    .local v6, "underline":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2160
    .local v7, "edgeType":I
    new-instance v0, Landroid/media/TimedTextEx$SetPenAttribute;

    invoke-direct/range {v0 .. v7}, Landroid/media/TimedTextEx$SetPenAttribute;-><init>(IIIIIII)V

    .line 2161
    .local v0, "setPenAttribute":Landroid/media/TimedTextEx$SetPenAttribute;
    iget-object v8, p0, Landroid/media/TimedTextEx;->mSetPenAttribute:Ljava/util/ArrayList;

    iget v9, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v8, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2162
    return-void
.end method

.method private readCommand_SetPenColor(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2168
    const-string v6, "TimedTextEx"

    const-string v7, "readCommand_SetPenColor"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2171
    .local v1, "fgColor":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2172
    .local v2, "fgOpacity":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2173
    .local v3, "bgColor":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2174
    .local v4, "bgOpacity":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2176
    .local v5, "egdeColor":I
    new-instance v0, Landroid/media/TimedTextEx$SetPenColor;

    invoke-direct/range {v0 .. v5}, Landroid/media/TimedTextEx$SetPenColor;-><init>(IIIII)V

    .line 2177
    .local v0, "setPenColor":Landroid/media/TimedTextEx$SetPenColor;
    iget-object v6, p0, Landroid/media/TimedTextEx;->mSetPenColor:Ljava/util/ArrayList;

    iget v7, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2178
    return-void
.end method

.method private readCommand_SetPenLocation(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2184
    const-string v3, "TimedTextEx"

    const-string v4, "readCommand_SetPenLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2187
    .local v1, "row":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2189
    .local v0, "column":I
    new-instance v2, Landroid/media/TimedTextEx$SetPenLocation;

    invoke-direct {v2, v1, v0}, Landroid/media/TimedTextEx$SetPenLocation;-><init>(II)V

    .line 2190
    .local v2, "setPenLocation":Landroid/media/TimedTextEx$SetPenLocation;
    iget-object v3, p0, Landroid/media/TimedTextEx;->mSetPenLocation:Ljava/util/ArrayList;

    iget v4, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2191
    return-void
.end method

.method private readCommand_SetWindowAttribute(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2127
    const-string v12, "TimedTextEx"

    const-string v13, "readCommand_SetWindowAttribute"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2130
    .local v1, "justify":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2131
    .local v2, "printDirection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2132
    .local v3, "scrollDirection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2133
    .local v4, "wordRap":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2134
    .local v5, "displayEffect":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2135
    .local v6, "effectDirection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2136
    .local v7, "effectSpeed":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2137
    .local v8, "fillColor":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2138
    .local v9, "fillOpacity":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2139
    .local v10, "borderType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2141
    .local v11, "borderColor":I
    new-instance v0, Landroid/media/TimedTextEx$SetWindowAttribute;

    invoke-direct/range {v0 .. v11}, Landroid/media/TimedTextEx$SetWindowAttribute;-><init>(IIIIIIIIIII)V

    .line 2143
    .local v0, "setWinAttribute":Landroid/media/TimedTextEx$SetWindowAttribute;
    iget-object v12, p0, Landroid/media/TimedTextEx;->mSetWinAttribute:Ljava/util/ArrayList;

    iget v13, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v12, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2144
    return-void
.end method

.method private readCommand_TapOffset1()V
    .registers 5

    .prologue
    .line 1898
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset1"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/4 v1, 0x1

    .line 1901
    .local v1, "tapoffset":I
    new-instance v0, Landroid/media/TimedTextEx$TapOffset1;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$TapOffset1;-><init>(I)V

    .line 1902
    .local v0, "tapOffset1":Landroid/media/TimedTextEx$TapOffset1;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset1:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1903
    return-void
.end method

.method private readCommand_TapOffset2()V
    .registers 5

    .prologue
    .line 1909
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    const/4 v1, 0x1

    .line 1912
    .local v1, "tapoffset":I
    new-instance v0, Landroid/media/TimedTextEx$TapOffset2;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$TapOffset2;-><init>(I)V

    .line 1913
    .local v0, "tapOffset2":Landroid/media/TimedTextEx$TapOffset2;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset2:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1914
    return-void
.end method

.method private readCommand_TapOffset3()V
    .registers 5

    .prologue
    .line 1920
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_TapOffset3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v1, 0x1

    .line 1923
    .local v1, "tapoffset":I
    new-instance v0, Landroid/media/TimedTextEx$TapOffset3;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$TapOffset3;-><init>(I)V

    .line 1924
    .local v0, "tapOffset3":Landroid/media/TimedTextEx$TapOffset3;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mTapOffset3:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1925
    return-void
.end method

.method private readCommand_TextAttribute(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2022
    const-string v3, "TimedTextEx"

    const-string v4, "readCommand_TextAttribute"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2025
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2027
    .local v1, "font":I
    new-instance v2, Landroid/media/TimedTextEx$TextAttribute;

    invoke-direct {v2, v0, v1}, Landroid/media/TimedTextEx$TextAttribute;-><init>(II)V

    .line 2028
    .local v2, "textAttribute":Landroid/media/TimedTextEx$TextAttribute;
    iget-object v3, p0, Landroid/media/TimedTextEx;->mTextAttribute:Ljava/util/ArrayList;

    iget v4, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2029
    return-void
.end method

.method private readCommand_ToggleWindows(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2116
    const-string v2, "TimedTextEx"

    const-string v3, "readCommand_ToggleWindows"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2119
    .local v1, "windowMap":I
    new-instance v0, Landroid/media/TimedTextEx$ToggleWindows;

    invoke-direct {v0, v1}, Landroid/media/TimedTextEx$ToggleWindows;-><init>(I)V

    .line 2120
    .local v0, "toggleWins":Landroid/media/TimedTextEx$ToggleWindows;
    iget-object v2, p0, Landroid/media/TimedTextEx;->mToggleWins:Ljava/util/ArrayList;

    iget v3, p0, Landroid/media/TimedTextEx;->mIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2121
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Landroid/media/TimedTextEx;->mData:[B

    return-object v0
.end method

.method public getLanguage()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLanguageCount()I
    .registers 2

    .prologue
    .line 1150
    iget v0, p0, Landroid/media/TimedTextEx;->mLanguageCount:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 1187
    const-string v0, "TimedTextEx"

    const-string v1, "getObject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-direct {p0, p1}, Landroid/media/TimedTextEx;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1189
    iget-object v0, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1190
    iget-object v0, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1192
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 1195
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceNumber()[I
    .registers 2

    .prologue
    .line 1217
    iget-object v0, p0, Landroid/media/TimedTextEx;->mServiceNumberList:[I

    return-object v0
.end method

.method public getServiceNumberMax()I
    .registers 2

    .prologue
    .line 1210
    iget v0, p0, Landroid/media/TimedTextEx;->mServiceNumberMax:I

    return v0
.end method

.method public getStartTimeMs()I
    .registers 2

    .prologue
    .line 1140
    iget v0, p0, Landroid/media/TimedTextEx;->mStartTimeMs:I

    return v0
.end method

.method public getTextList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 2282
    const-string v0, "TimedTextEx"

    const-string v1, "keySet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v0, p0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected parseParcelEx(Landroid/os/Parcel;)Z
    .registers 25
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1222
    const-string v20, "TimedTextEx"

    const-string v21, "TimedTextEx.parseParcelEx"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1225
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v20

    if-nez v20, :cond_20

    .line 1226
    const-string v20, "TimedTextEx"

    const-string v21, "parseParcel data zero "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/16 v20, 0x0

    .line 1407
    :goto_1f
    return v20

    .line 1231
    :cond_20
    const/4 v4, 0x0

    .line 1232
    .local v4, "dataPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1234
    .local v19, "type":I
    const/16 v20, 0x192

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a0

    .line 1237
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1238
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_54

    .line 1239
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_MEDIA_MIMETYPE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/16 v20, 0x0

    goto :goto_1f

    .line 1242
    :cond_54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1243
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 1244
    .local v13, "mimeType":[B
    if-eqz v13, :cond_62

    array-length v0, v13

    move/from16 v20, v0

    if-nez v20, :cond_98

    .line 1245
    :cond_62
    const-string v20, "TimedTextEx"

    const-string v21, "mimeType null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 1253
    :goto_71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1254
    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c0

    .line 1255
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_START_TIME_US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/16 v20, 0x0

    goto :goto_1f

    .line 1248
    :cond_98
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    .line 1249
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "KEY_MEDIA_MIMETYPE "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mMimeTypeChars:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 1258
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/TimedTextEx;->mStartTimeMs:I

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1262
    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f2

    .line 1263
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_LANGUAGE_COUNT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1266
    :cond_f2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/TimedTextEx;->mLanguageCount:I

    .line 1268
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "KEY_LANGUAGE_COUNT ["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_11d
    const/16 v20, 0x44

    move/from16 v0, v20

    if-lt v3, v0, :cond_13b

    .line 1274
    invoke-direct/range {p0 .. p0}, Landroid/media/TimedTextEx;->initCommand()V

    .line 1276
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/TimedTextEx;->mLanguageCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v5, v0, :cond_148

    .line 1364
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v13    # "mimeType":[B
    :cond_131
    :goto_131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v20

    if-gtz v20, :cond_3c4

    .line 1407
    const/16 v20, 0x1

    goto/16 :goto_1f

    .line 1271
    .restart local v3    # "count":I
    .restart local v13    # "mimeType":[B
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v20, v0

    const/16 v21, -0x1

    aput v21, v20, v3

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 1277
    .restart local v5    # "i":I
    :cond_148
    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/TimedTextEx;->mIndex:I

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1280
    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_174

    .line 1281
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_EX_MAX_SERVICE_NUM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1284
    :cond_174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/TimedTextEx;->mServiceNumberMax:I

    .line 1287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1288
    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1a6

    .line 1289
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_EX_SERVICE_NUM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1292
    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1293
    .local v11, "mServiceNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v20, v0

    aput v11, v20, v5

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1297
    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1da

    .line 1298
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "!= KEY_LANGUAGE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1302
    :cond_1da
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1303
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1304
    .local v7, "language":[B
    const/4 v10, 0x0

    .line 1306
    .local v10, "mLanguageChars":Ljava/lang/String;
    if-eqz v7, :cond_1e9

    array-length v0, v7

    move/from16 v20, v0

    if-nez v20, :cond_289

    .line 1307
    :cond_1e9
    const-string v20, "TimedTextEx"

    const-string v21, "language null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :goto_1f0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1316
    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31e

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1318
    .local v17, "textLen":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1319
    .local v16, "text":[B
    const/4 v12, 0x0

    .line 1321
    .local v12, "mTextChars":Ljava/lang/String;
    if-eqz v16, :cond_20e

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_2bd

    .line 1322
    :cond_20e
    new-instance v12, Ljava/lang/String;

    .end local v12    # "mTextChars":Ljava/lang/String;
    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 1323
    .restart local v12    # "mTextChars":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    const-string v20, "TimedTextEx"

    const-string v21, "text null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :goto_225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mServiceNumberList:[I

    move-object/from16 v20, v0

    aget v20, v20, v5

    if-lez v20, :cond_285

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v20

    if-lez v20, :cond_285

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1335
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Check if there is a command ["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "dataPosition:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " type:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_310

    .line 1339
    const-string v20, "TimedTextEx"

    const-string v21, "KEY_EX_COMMAND start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedTextEx;->readCommand(Landroid/os/Parcel;)Z

    .line 1276
    .end local v12    # "mTextChars":Ljava/lang/String;
    .end local v16    # "text":[B
    .end local v17    # "textLen":I
    :cond_285
    :goto_285
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_127

    .line 1309
    :cond_289
    new-instance v10, Ljava/lang/String;

    .end local v10    # "mLanguageChars":Ljava/lang/String;
    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    .line 1310
    .restart local v10    # "mLanguageChars":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mLanguageList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "KEY_LANGUAGE ["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f0

    .line 1326
    .restart local v12    # "mTextChars":Ljava/lang/String;
    .restart local v16    # "text":[B
    .restart local v17    # "textLen":I
    :cond_2bd
    new-instance v12, Ljava/lang/String;

    .end local v12    # "mTextChars":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 1327
    .restart local v12    # "mTextChars":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mTextList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "KEY_EX_TEXT ["

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " textLen:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " text.length:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_225

    .line 1342
    :cond_310
    const-string v20, "TimedTextEx"

    const-string v21, "No KEY_EX_COMMAND"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto/16 :goto_285

    .line 1346
    .end local v12    # "mTextChars":Ljava/lang/String;
    .end local v16    # "text":[B
    .end local v17    # "textLen":I
    :cond_31e
    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_285

    .line 1347
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1348
    .local v9, "len":I
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "KEY_EX_DATA len:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    new-array v0, v9, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedTextEx;->mData:[B

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mData:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mData:[B

    move-object/from16 v20, v0

    if-nez v20, :cond_379

    .line 1353
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "**** parseParcel **** KEY_STRUCT_TEXT mData null :"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_285

    .line 1354
    :cond_379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mData:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_285

    .line 1355
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "**** parseParcel **** KEY_STRUCT_TEXT mData.length zero :"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_285

    .line 1359
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "language":[B
    .end local v9    # "len":I
    .end local v10    # "mLanguageChars":Ljava/lang/String;
    .end local v11    # "mServiceNumber":I
    .end local v13    # "mimeType":[B
    :cond_3a0
    const/16 v20, 0x191

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_131

    .line 1360
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "[1] Invalid timed text ex key found: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1365
    :cond_3c4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1366
    .local v6, "key":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/media/TimedTextEx;->isValidKey(I)Z

    move-result v20

    if-nez v20, :cond_3ea

    .line 1367
    const-string v20, "TimedTextEx"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "[2] Invalid timed text ex key found: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/16 v20, 0x0

    goto/16 :goto_1f

    .line 1371
    :cond_3ea
    const/4 v14, 0x0

    .line 1373
    .local v14, "object":Ljava/lang/Object;
    packed-switch v6, :pswitch_data_46e

    .line 1398
    .end local v14    # "object":Ljava/lang/Object;
    :goto_3ee
    if-eqz v14, :cond_131

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_40d

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    :cond_40d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/TimedTextEx;->mKeyObjectMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_131

    .line 1375
    .restart local v14    # "object":Ljava/lang/Object;
    :pswitch_420
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1376
    .local v18, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1377
    .local v8, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1378
    .local v2, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1379
    .local v15, "right":I
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    .line 1380
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/TimedTextEx;->mTextBounds:Landroid/graphics/Rect;

    .line 1381
    .local v14, "object":Landroid/graphics/Rect;
    goto :goto_3ee

    .line 1384
    .end local v2    # "bottom":I
    .end local v8    # "left":I
    .end local v15    # "right":I
    .end local v18    # "top":I
    .local v14, "object":Ljava/lang/Object;
    :pswitch_444
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/TimedTextEx;->mHeight:I

    .line 1385
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/TimedTextEx;->mHeight:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1386
    .local v14, "object":Ljava/lang/Integer;
    goto :goto_3ee

    .line 1389
    .local v14, "object":Ljava/lang/Object;
    :pswitch_459
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/TimedTextEx;->mWidth:I

    .line 1390
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/TimedTextEx;->mWidth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1391
    .local v14, "object":Ljava/lang/Integer;
    goto :goto_3ee

    .line 1373
    :pswitch_data_46e
    .packed-switch 0x7
        :pswitch_420
        :pswitch_444
        :pswitch_459
    .end packed-switch
.end method
