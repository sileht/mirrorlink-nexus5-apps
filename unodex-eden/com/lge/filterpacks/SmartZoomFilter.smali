.class public Lcom/lge/filterpacks/SmartZoomFilter;
.super Landroid/filterfw/core/Filter;
.source "SmartZoomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;,
        Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEARNING_DURATION:I = 0x5

.field private static final DEFAULT_SCREEN_HEIGHT:I = 0x438

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x780

.field private static final HAS_FISHEYE_MASK:I = 0x9

.field private static final HAS_NO_MASK:I = 0x2

.field private static final HAS_OVERLAY_MASK:I = 0x4

.field private static final HAS_SIMPLE_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartZoomFilter"

.field private static degree:F

.field private static mInputNames:[Ljava/lang/String;

.field private static mMaskBitmap:Landroid/graphics/Bitmap;

.field private static mMaskChanged:Z

.field private static mMaskMode:I

.field private static mNextMaskMode:I

.field private static mOutputNames:[Ljava/lang/String;

.field private static mOverlayBitmap:Landroid/graphics/Bitmap;

.field private static mPIPRectThick:I

.field private static mPositionPIP_height:I

.field private static mPositionPIP_width:I

.field private static mPositionPIP_x:I

.field private static mPositionPIP_y:I

.field private static mRequestMaskUpdate:Z

.field private static mSmartZoomShader:Ljava/lang/String;

.field private static mSmartZoomShaderwithMask:Ljava/lang/String;

.field private static mSmartZoomShaderwithMaskFishEye:Ljava/lang/String;

.field private static mSmartZoomShaderwithOverlay:Ljava/lang/String;

.field private static misSetBitmapActive:Z


# instance fields
.field private mFrameCount:I

.field private mLearningDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDoneListener"
    .end annotation
.end field

.field private mLearningDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDuration"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMaskFrame:Landroid/filterfw/core/GLFrame;

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mOverlayFrame:Landroid/filterfw/core/GLFrame;

.field private mPipHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pHeight"
    .end annotation
.end field

.field private mPipPosX:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pPosX"
    .end annotation
.end field

.field private mPipPosY:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pPosY"
    .end annotation
.end field

.field private mPipWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pWidth"
    .end annotation
.end field

.field private mRectThick:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rThick"
    .end annotation
.end field

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "screenHeight"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "screenWidth"
    .end annotation
.end field

.field private mSetBitmapDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "setBitmapDoneListener"
    .end annotation
.end field

.field private mSmartZoomProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

.field private mSmartZoomProgramwithMask:Landroid/filterfw/core/ShaderProgram;

.field private mSmartZoomProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

.field private mSmartZoomProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "video"

    aput-object v1, v0, v2

    const-string v1, "background"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mInputNames:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOutputNames:[Ljava/lang/String;

    .line 95
    sput-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->mRequestMaskUpdate:Z

    .line 96
    sput-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    .line 105
    sput v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    .line 106
    sput v3, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 108
    sput-object v5, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 109
    sput-object v5, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 120
    sput-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    .line 126
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float start_x_pip;\nuniform float start_y_pip;\nuniform float end_x_pip;\nuniform float end_y_pip;\nuniform float width_scale;\nuniform float height_scale;\nuniform float rect_x;\nuniform float rect_y;\nvarying vec2 v_texcoord;\nvoid main() {\n    vec4 main_view;\n    vec4 pip_view;\n    vec4 rect_view;\n    vec2 pip_texcoord;\n    pip_texcoord.x = width_scale * (v_texcoord.x - start_x_pip);\n    pip_texcoord.y = height_scale * (v_texcoord.y - start_y_pip);\n    main_view = texture2D(tex_sampler_0, v_texcoord);\n    pip_view = texture2D(tex_sampler_1, pip_texcoord);\n    vec2 t_coord = clamp(v_texcoord, vec2(start_x_pip, start_y_pip), vec2(end_x_pip, end_y_pip));\n    vec2 rect_coord = clamp(pip_texcoord, vec2(rect_x, rect_y), vec2(1.0-rect_x, 1.0-rect_y));\n    rect_view = (rect_coord != pip_texcoord) ? vec4(1.0,1.0,1.0,1.0) : pip_view;\n    gl_FragColor = (t_coord != v_texcoord) ? main_view : rect_view;\n}\n"

    .line 125
    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShader:Ljava/lang/String;

    .line 162
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float start_x_pip;\nuniform float start_y_pip;\nuniform float end_x_pip;\nuniform float end_y_pip;\nuniform float width_scale;\nuniform float height_scale;\nuniform float rotate;\nvarying vec2 v_texcoord;\nvoid main() {\n    const float mask_offset = 0.6;\n    const float pos_down = 0.39;\n    const float window_ratio = 16.0/9.0;\n    vec4 main_view;\n    vec4 pip_view;\n    vec4 rect_view;\n    vec2 pip_texcoord;\n    pip_texcoord.x = width_scale * (v_texcoord.x - start_x_pip);\n    pip_texcoord.y = height_scale * (v_texcoord.y - start_y_pip);\n    main_view = texture2D(tex_sampler_0, v_texcoord);\n    pip_view = texture2D(tex_sampler_1, pip_texcoord);\n    highp vec2 effect_texcoord;\n    highp vec2 effect_texcoord_temp;\n    highp vec4 effect_mask; \n    if ( rotate == 0.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.y, 1.0 - pip_texcoord.x); \n \t   effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n    } else if ( rotate == 1.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.x, pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n        }\n    } else if ( rotate == 2.0 ) {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.y, pip_texcoord.x); \n \t   effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n    } else {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.x, 1.0 - pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n \t   effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n        }\n    }\n    highp vec2 t_coord = clamp(v_texcoord, vec2(start_x_pip, start_y_pip), vec2(end_x_pip, end_y_pip));\n    if (t_coord == v_texcoord && effect_mask.g > mask_offset) {\n        pip_view = vec4( 1.0, 1.0, 1.0, 1.0 );\n    } else {\n        pip_view = effect_mask.b * pip_view + (1.0 - effect_mask.b) * main_view;\n    }\n    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : pip_view; \n }\n"

    .line 161
    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithMask:Ljava/lang/String;

    .line 242
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float start_x_pip;\nuniform float start_y_pip;\nuniform float end_x_pip;\nuniform float end_y_pip;\nuniform float width_scale;\nuniform float height_scale;\nuniform float rotate;\nvarying vec2 v_texcoord;\nvoid main() {\n    const float pos_down = 0.39;\n    const float window_ratio = 16.0/9.0;\n    highp vec4 main_view;\n    highp vec4 pip_view;\n    highp vec4 rect_view;\n    highp vec2 pip_texcoord;\n    pip_texcoord.x = width_scale * (v_texcoord.x - start_x_pip);\n    pip_texcoord.y = height_scale * (v_texcoord.y - start_y_pip);\n    main_view = texture2D(tex_sampler_0, v_texcoord);\n    pip_view = texture2D(tex_sampler_1, pip_texcoord);\n    highp vec2 effect_texcoord;\n    highp vec2 effect_texcoord_temp;\n    highp vec4 effect_mask; \n    highp vec4 effect_overlay; \n    if ( rotate == 0.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.y, 1.0 - pip_texcoord.x); \n \t   effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n    } else if ( rotate == 1.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.x, pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n            effect_overlay = vec4(0.0,0.0,0.0,0.0); \n        }\n    } else if ( rotate == 2.0 ) {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.y, pip_texcoord.x); \n        effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n    } else {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.x, 1.0 - pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n            effect_overlay = vec4(0.0,0.0,0.0,0.0); \n        }\n    }\n    highp vec2 t_coord = clamp(v_texcoord, vec2(start_x_pip, start_y_pip), vec2(end_x_pip, end_y_pip));\n    if (t_coord == v_texcoord && effect_mask.r >= effect_mask.b ) {\n        rect_view = main_view;\n    } else {\n        rect_view = pip_view;\n    }\n    if ( t_coord == v_texcoord && effect_overlay.a == 0.0) {\n        rect_view = rect_view;\n    } else {\n        rect_view = smoothstep(0.05,0.95,effect_overlay.a) * effect_overlay + ( 1.0 - smoothstep(0.05,0.95,effect_overlay.a) ) * rect_view;\n    }\n    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : rect_view; \n }\n"

    .line 241
    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithOverlay:Ljava/lang/String;

    .line 334
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float start_x_pip;\nuniform float start_y_pip;\nuniform float end_x_pip;\nuniform float end_y_pip;\nuniform float width_scale;\nuniform float height_scale;\nuniform float rect_x;\nuniform float rect_y;\nuniform float rotate;\nvarying vec2 v_texcoord;\nvoid main() {\n    const float pos_down = 0.39;\n    const float window_ratio = 16.0/9.0;\n    const float effect_radius = 1.5;\n    const float m_pi_2 = 1.570963;\n    const float alpha = 3.750000;\n    const float radius2 = 0.661250;\n    const float factor = 1.610678;\n    vec4 main_view;\n    vec4 fish_view;\n    vec4 pip_view;\n    vec4 rect_view;\n    vec2 pip_texcoord;\n    vec2 fish_texcoord;\n    pip_texcoord.x = width_scale * ( v_texcoord.x - start_x_pip );\n    pip_texcoord.y = height_scale * ( v_texcoord.y - start_y_pip );\n    main_view = texture2D( tex_sampler_0 , v_texcoord);\n    fish_texcoord = pip_texcoord;\n    vec2 coord = fish_texcoord - vec2( 0.5 , 0.5 );\n    float dist = length( coord * effect_radius );\n    float radian = m_pi_2 - atan( alpha * sqrt( radius2 - dist * dist ), dist );\n    float scalar = radian * factor / dist;\n    vec2 new_coord = coord * scalar + vec2( 0.5 , 0.5 );\n    fish_view = texture2D( tex_sampler_1, vec2( new_coord.x , new_coord.y ));\n    highp vec2 effect_texcoord;\n    highp vec2 effect_texcoord_temp;\n    highp vec4 effect_mask; \n    highp vec4 effect_overlay; \n    if ( rotate == 0.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.y, 1.0 - pip_texcoord.x); \n        effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n    } else if ( rotate == 1.0 ) {\n        effect_texcoord_temp = vec2(pip_texcoord.x, pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n            effect_overlay = vec4(0.0,0.0,0.0,0.0); \n        }\n    } else if ( rotate == 2.0 ) {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.y, pip_texcoord.x); \n        effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n    } else {\n        effect_texcoord_temp = vec2(1.0 - pip_texcoord.x, 1.0 - pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( 0.0 <= effect_texcoord.y && effect_texcoord.y <= 1.0 ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n        } else {\n            effect_mask = vec4(1.0,0.0,0.0,0.0); \n            effect_overlay = vec4(0.0,0.0,0.0,0.0); \n        }\n    }\n    vec2 t_coord = clamp( v_texcoord, vec2( start_x_pip , start_y_pip ), vec2( end_x_pip , end_y_pip ));\n    vec2 rect_coord = clamp( fish_texcoord , vec2( rect_x, rect_y ), vec2( 1.0 - rect_x , 1.0 - rect_y ));\n    if ( t_coord == v_texcoord && effect_mask.r > effect_mask.b ) {\n        rect_view = effect_overlay.a * effect_overlay + ( 1.0 - effect_overlay.a ) * main_view;\n    } else {\n        rect_view = effect_overlay.a * effect_overlay + ( 1.0 - effect_overlay.a ) * fish_view;\n    }\n    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : rect_view; \n }\n"

    .line 333
    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithMaskFishEye:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 462
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLearningDuration:I

    .line 46
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLearningDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    .line 49
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    .line 52
    const/16 v0, 0x780

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenWidth:I

    .line 55
    const/16 v0, 0x438

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenHeight:I

    .line 58
    iput v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipPosX:I

    .line 61
    iput v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipPosY:I

    .line 64
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipWidth:I

    .line 67
    const/16 v0, 0x10e

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipHeight:I

    .line 70
    iput v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mRectThick:I

    .line 88
    iput-boolean v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLogVerbose:Z

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->startTime:J

    .line 110
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 111
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 463
    return-void
.end method

.method private SetBitmapDone()V
    .registers 2

    .prologue
    .line 590
    sget-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    if-nez v0, :cond_14

    .line 591
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    if-eqz v0, :cond_14

    .line 592
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    invoke-interface {v0, p0}, Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;->onSetBitmapDone(Lcom/lge/filterpacks/SmartZoomFilter;)V

    .line 593
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    .line 596
    :cond_14
    return-void
.end method

.method private static ShouldNotBeHere(Ljava/lang/String;)V
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 774
    const-string v0, "SmartZoomFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x2

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 778
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 779
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 780
    sput-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 783
    :cond_14
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 784
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 785
    sput-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 788
    :cond_1f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    .line 789
    return-void
.end method

.method private calculatePIPPosition()V
    .registers 10

    .prologue
    .line 677
    iget v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenWidth:I

    int-to-float v6, v6

    sget v7, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 678
    .local v5, "width_scale":F
    iget v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenHeight:I

    int-to-float v6, v6

    sget v7, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 680
    .local v2, "height_scale":F
    sget v6, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_x:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 681
    .local v3, "start_x":F
    sget v6, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_y:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenHeight:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 682
    .local v4, "start_y":F
    sget v6, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float v0, v3, v6

    .line 683
    .local v0, "end_x":F
    sget v6, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float v1, v4, v6

    .line 685
    .local v1, "end_y":F
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "start_x_pip"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "start_y_pip"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 687
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "end_x_pip"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "end_y_pip"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "width_scale"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "height_scale"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    return-void
.end method

.method private insertInputs(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;[Landroid/filterfw/core/Frame;)V
    .registers 8
    .param p1, "video"    # Landroid/filterfw/core/Frame;
    .param p2, "background"    # Landroid/filterfw/core/Frame;
    .param p3, "cameraInputs"    # [Landroid/filterfw/core/Frame;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 631
    const/4 v0, 0x0

    aput-object p1, p3, v0

    .line 632
    const/4 v0, 0x1

    aput-object p2, p3, v0

    .line 634
    sget v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    packed-switch v0, :pswitch_data_d4

    .line 662
    :pswitch_d
    const-string v0, "SmartZoomFilter.process(default) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/SmartZoomFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 664
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_x"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_y"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    :goto_3a
    return-void

    .line 636
    :pswitch_3b
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 637
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_x"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_y"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    .line 641
    :pswitch_64
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v0, p3, v1

    .line 642
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithMask:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 643
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rotate"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    .line 647
    :pswitch_7a
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v0, p3, v1

    .line 648
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    aput-object v0, p3, v2

    .line 649
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 650
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rotate"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    .line 653
    :pswitch_94
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v0, p3, v1

    .line 654
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    aput-object v0, p3, v2

    .line 655
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 656
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_x"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rect_y"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    int-to-float v2, v2

    sget v3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "rotate"

    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3a

    .line 634
    nop

    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_64
        :pswitch_7a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_94
    .end packed-switch
.end method

.method private static isMaskBitmapNull(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 764
    if-nez p0, :cond_9

    .line 765
    const-string v0, "SmartZoomFilter.setPIPMask() : mbitmap == null."

    invoke-static {v0}, Lcom/lge/filterpacks/SmartZoomFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 766
    const/4 v0, 0x1

    .line 768
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private learning_done()V
    .registers 3

    .prologue
    .line 856
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mFrameCount:I

    iget v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLearningDuration:I

    if-ne v0, v1, :cond_16

    .line 857
    const-string v0, "SmartZoomFilter"

    const-string v1, "[filter framework] Learning done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLearningDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    if-eqz v0, :cond_16

    .line 859
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mLearningDoneListener:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    invoke-interface {v0, p0}, Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;->onLearningDone(Lcom/lge/filterpacks/SmartZoomFilter;)V

    .line 862
    :cond_16
    return-void
.end method

.method private log_framerate(Landroid/filterfw/core/FilterContext;)V
    .registers 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 883
    return-void
.end method

.method public static setPIPMask(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 737
    sget-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    if-nez v0, :cond_25

    .line 738
    sput-boolean v1, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    .line 740
    if-nez p0, :cond_26

    .line 741
    const/4 v0, 0x2

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 742
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 743
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 744
    sput-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 752
    :cond_18
    :goto_18
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 753
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 754
    sput-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 757
    :cond_23
    sput-boolean v1, Lcom/lge/filterpacks/SmartZoomFilter;->mRequestMaskUpdate:Z

    .line 759
    :cond_25
    return-void

    .line 747
    :cond_26
    const/4 v0, 0x3

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 748
    sput-object p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 749
    sput-boolean v1, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    goto :goto_18
.end method

.method public static setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .registers 7
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mbitmap_overlay"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 800
    const-string v0, "SmartZoomFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartZoomFilter.setPIPMask() misSetBitmapActive :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sget-boolean v0, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    if-nez v0, :cond_27

    .line 802
    sput-boolean v3, Lcom/lge/filterpacks/SmartZoomFilter;->misSetBitmapActive:Z

    .line 804
    packed-switch p2, :pswitch_data_8e

    .line 845
    const-string v0, "SmartZoomFilter.setPIPMask(default) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/SmartZoomFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 849
    :cond_25
    :goto_25
    sput-boolean v3, Lcom/lge/filterpacks/SmartZoomFilter;->mRequestMaskUpdate:Z

    .line 851
    :cond_27
    return-void

    .line 807
    :pswitch_28
    invoke-static {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->isMaskBitmapNull(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 808
    if-nez p1, :cond_44

    .line 809
    const/4 v0, 0x3

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 810
    sput-object p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 812
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    .line 813
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 816
    :cond_41
    sput-boolean v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    goto :goto_25

    .line 821
    :cond_44
    const-string v0, "SmartZoomFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmartZoomFilter.setPIPMask() : mbitmap_overlay width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x4

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 823
    sput-object p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 824
    sput-object p1, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 825
    sput-boolean v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    goto :goto_25

    .line 831
    :pswitch_74
    invoke-static {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->isMaskBitmapNull(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 832
    if-nez p1, :cond_82

    .line 834
    const-string v0, "SmartZoomFilter.setPIPMask(1) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/SmartZoomFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    goto :goto_25

    .line 836
    :cond_82
    const/16 v0, 0x9

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 837
    sput-object p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 838
    sput-object p1, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 839
    sput-boolean v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    goto :goto_25

    .line 804
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_28
        :pswitch_74
    .end packed-switch
.end method

.method public static setPIPPosition(IIII)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 703
    sput p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_x:I

    .line 704
    sput p1, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_y:I

    .line 705
    sput p2, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    .line 706
    sput p3, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    .line 707
    return-void
.end method

.method public static setPIPRectThick(I)V
    .registers 1
    .param p0, "mThick"    # I

    .prologue
    .line 710
    sput p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    .line 711
    return-void
.end method

.method public static setPIPRotate(I)V
    .registers 3
    .param p0, "incomedegree"    # I

    .prologue
    const/4 v1, 0x0

    .line 720
    if-nez p0, :cond_6

    .line 721
    sput v1, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    .line 731
    :goto_5
    return-void

    .line 722
    :cond_6
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_f

    .line 723
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    goto :goto_5

    .line 724
    :cond_f
    const/16 v0, 0xb4

    if-ne p0, v0, :cond_18

    .line 725
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    goto :goto_5

    .line 726
    :cond_18
    const/16 v0, 0x10e

    if-ne p0, v0, :cond_21

    .line 727
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    goto :goto_5

    .line 729
    :cond_21
    sput v1, Lcom/lge/filterpacks/SmartZoomFilter;->degree:F

    goto :goto_5
.end method

.method private updateBitmapMask(Landroid/filterfw/core/FilterContext;)V
    .registers 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v7, 0x2801

    const/16 v6, 0x2800

    const/16 v5, 0x2601

    const/4 v4, 0x3

    .line 601
    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_83

    sget-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    if-eqz v2, :cond_83

    .line 602
    const v2, 0x8192

    const/16 v3, 0x1102

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glHint(II)V

    .line 604
    sget-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 607
    .local v0, "maskformat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/GLFrame;

    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 608
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    sget-object v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/GLFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 609
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 610
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v7, v5}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 611
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v6, v5}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 613
    sget v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    if-eq v2, v4, :cond_80

    .line 614
    sget-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, v4, v4}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 617
    .local v1, "maskformatNew":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/GLFrame;

    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 618
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    sget-object v3, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/GLFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 620
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v7, v5}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 621
    iget-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v6, v5}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 624
    .end local v1    # "maskformatNew":Landroid/filterfw/core/FrameFormat;
    :cond_80
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskChanged:Z

    .line 626
    .end local v0    # "maskformat":Landroid/filterfw/core/FrameFormat;
    :cond_83
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 526
    const-string v0, "SmartZoomFilter"

    const-string v1, "[filter framework] close()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sput v3, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    .line 528
    sput v3, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    .line 530
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_18

    .line 531
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 532
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 535
    :cond_18
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_23

    .line 536
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 537
    iput-object v2, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 540
    :cond_23
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 541
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 542
    sput-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 545
    :cond_2e
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_39

    .line 546
    sget-object v0, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 547
    sput-object v2, Lcom/lge/filterpacks/SmartZoomFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 549
    :cond_39
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 6
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 490
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mOutputNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 491
    invoke-virtual {v0, v2, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 493
    :cond_14
    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x3

    .line 499
    const-string v0, "SmartZoomFilter"

    const-string v1, "[filter framework] prepare()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenWidth:I

    iget v1, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mScreenHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 505
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram:Landroid/filterfw/core/ShaderProgram;

    .line 506
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithMask:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithMask:Landroid/filterfw/core/ShaderProgram;

    .line 507
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithOverlay:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

    .line 508
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomShaderwithMaskFishEye:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

    .line 510
    iget-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mFrameCount:I

    .line 514
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipPosX:I

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_x:I

    .line 515
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipPosY:I

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_y:I

    .line 516
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipWidth:I

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_width:I

    .line 517
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mPipHeight:I

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mPositionPIP_height:I

    .line 519
    iget v0, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mRectThick:I

    sput v0, Lcom/lge/filterpacks/SmartZoomFilter;->mPIPRectThick:I

    .line 520
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 557
    const-string v5, "video"

    invoke-virtual {p0, v5}, Lcom/lge/filterpacks/SmartZoomFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 558
    .local v4, "video":Landroid/filterfw/core/Frame;
    const-string v5, "background"

    invoke-virtual {p0, v5}, Lcom/lge/filterpacks/SmartZoomFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 560
    .local v0, "background":Landroid/filterfw/core/Frame;
    invoke-direct {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->learning_done()V

    .line 562
    sget-boolean v5, Lcom/lge/filterpacks/SmartZoomFilter;->mRequestMaskUpdate:Z

    if-eqz v5, :cond_1a

    .line 563
    sget v5, Lcom/lge/filterpacks/SmartZoomFilter;->mNextMaskMode:I

    sput v5, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    .line 564
    const/4 v5, 0x0

    sput-boolean v5, Lcom/lge/filterpacks/SmartZoomFilter;->mRequestMaskUpdate:Z

    .line 567
    :cond_1a
    sget v5, Lcom/lge/filterpacks/SmartZoomFilter;->mMaskMode:I

    rem-int/lit8 v2, v5, 0x5

    .line 568
    .local v2, "maskFrameNumber":I
    new-array v1, v2, [Landroid/filterfw/core/Frame;

    .line 570
    .local v1, "cameraInputs":[Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Lcom/lge/filterpacks/SmartZoomFilter;->updateBitmapMask(Landroid/filterfw/core/FilterContext;)V

    .line 571
    invoke-direct {p0, v4, v0, v1}, Lcom/lge/filterpacks/SmartZoomFilter;->insertInputs(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;[Landroid/filterfw/core/Frame;)V

    .line 572
    invoke-direct {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->calculatePIPPosition()V

    .line 574
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 575
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mSmartZoomProgram_selected:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v5, v1, v3}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 577
    const-string v5, "video"

    invoke-virtual {p0, v5, v3}, Lcom/lge/filterpacks/SmartZoomFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 578
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 580
    invoke-direct {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->SetBitmapDone()V

    .line 582
    iget v5, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lge/filterpacks/SmartZoomFilter;->mFrameCount:I

    .line 584
    invoke-direct {p0, p1}, Lcom/lge/filterpacks/SmartZoomFilter;->log_framerate(Landroid/filterfw/core/FilterContext;)V

    .line 585
    return-void
.end method

.method public setupPorts()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 470
    const-string v4, "SmartZoomFilter"

    const-string v5, "[filter framework] setupPorts()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v4, 0x3

    invoke-static {v4, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 474
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    sget-object v5, Lcom/lge/filterpacks/SmartZoomFilter;->mInputNames:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_11
    if-lt v4, v6, :cond_19

    .line 478
    sget-object v4, Lcom/lge/filterpacks/SmartZoomFilter;->mOutputNames:[Ljava/lang/String;

    array-length v5, v4

    :goto_16
    if-lt v3, v5, :cond_21

    .line 481
    return-void

    .line 474
    :cond_19
    aget-object v1, v5, v4

    .line 475
    .local v1, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/lge/filterpacks/SmartZoomFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 478
    .end local v1    # "inputName":Ljava/lang/String;
    :cond_21
    aget-object v2, v4, v3

    .line 479
    .local v2, "outputName":Ljava/lang/String;
    const-string v6, "video"

    invoke-virtual {p0, v2, v6}, Lcom/lge/filterpacks/SmartZoomFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    add-int/lit8 v3, v3, 0x1

    goto :goto_16
.end method
