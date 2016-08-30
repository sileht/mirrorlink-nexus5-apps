.class public Lcom/lge/filterpacks/DualRecorderFilter;
.super Landroid/filterfw/core/Filter;
.source "DualRecorderFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;,
        Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;,
        Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;,
        Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEARNING_DURATION:I = 0x3

.field private static final DEFAULT_SCREEN_HEIGHT:I = 0x438

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x780

.field private static final HAS_FISHEYE_MASK:I = 0x9

.field private static final HAS_NO_MASK:I = 0x2

.field private static final HAS_OVALBLUR_MASK:I = 0x3

.field private static final HAS_OVERLAY_MASK:I = 0x4

.field private static final HAS_SPLIT_MASK:I = 0xe

.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DualRecorderFilter"

.field private static closeCalledBeforeManualStop:Z

.field private static degree:F

.field private static fs_BasicPIPTexcoord:Ljava/lang/String;

.field private static fs_Clamp_t_coord:Ljava/lang/String;

.field private static fs_DefaultConstValue:Ljava/lang/String;

.field private static fs_DefaultParameters:Ljava/lang/String;

.field private static fs_DefaultSetting:Ljava/lang/String;

.field private static fs_DefaultViewandCoord:Ljava/lang/String;

.field private static fs_Default_Main_PIP_VIew:Ljava/lang/String;

.field private static fs_EffectMaskandCoord:Ljava/lang/String;

.field private static fs_EffectOverlayandCoord:Ljava/lang/String;

.field private static fs_Set_Mask_and_Overlay:Ljava/lang/String;

.field private static fs_UniformTexture:Ljava/lang/String;

.field private static mCamera:Landroid/hardware/Camera;

.field private static mCameraState:Z

.field private static mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mCameracheck:Z

.field private static mDualRecorderShader:Ljava/lang/String;

.field private static mDualRecorderShaderwithMaskFishEye:Ljava/lang/String;

.field private static mDualRecorderShaderwithMaskSplit:Ljava/lang/String;

.field private static mDualRecorderShaderwithOvalblur:Ljava/lang/String;

.field private static mDualRecorderShaderwithOverlay:Ljava/lang/String;

.field private static mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private static mInputNames:[Ljava/lang/String;

.field private static mIsCameraOpened:Z

.field private static mMaskBitmap:Landroid/graphics/Bitmap;

.field private static mMaskChanged:Z

.field private static mMaskFrame:Landroid/filterfw/core/GLFrame;

.field private static mMaskMode:I

.field private static mNextMaskMode:I

.field private static mOutputNames:[Ljava/lang/String;

.field private static mOverlayBitmap:Landroid/graphics/Bitmap;

.field private static mOverlayFrame:Landroid/filterfw/core/GLFrame;

.field private static mPIPRectThick:I

.field private static mPositionPIP_height:I

.field private static mPositionPIP_width:I

.field private static mPositionPIP_x:I

.field private static mPositionPIP_y:I

.field private static mRequestCapture:Z

.field private static mRequestMaskUpdate:Z

.field private static mSelectedPIP:I

.field private static mSourceCoords:[F

.field private static mSourceListener:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "sourceListener"
    .end annotation
.end field

.field private static mSurfaceCheck:Z

.field private static manualStopPreviewCalledBeforeOpen:Z

.field private static misSetBitmapActive:Z


# instance fields
.field private CameraAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "cameraHeight"
    .end annotation
.end field

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientationDegree"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "cameraWidth"
    .end annotation
.end field

.field private mCaptureRotationDegree:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "captureRotationDegree"
    .end annotation
.end field

.field private mDualRecorderProgram:Landroid/filterfw/core/ShaderProgram;

.field private mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

.field private mDualRecorderProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

.field private mDualRecorderProgramwithMaskSplit:Landroid/filterfw/core/ShaderProgram;

.field private mDualRecorderProgramwithOvalblur:Landroid/filterfw/core/ShaderProgram;

.field private mDualRecorderProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

.field private mFirstFrame:Z

.field private mFocusmode:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "focusmode"
    .end annotation
.end field

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameCount:I

.field private mFrameTransform:[F

.field private mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;
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

.field private mMappedCoords:[F

.field private mNewCameraFrameAvailable:Z

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

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

.field private mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "previewFrameListener"
    .end annotation
.end field

.field private mProcessCount:I

.field private mQuality:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "quality"
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

.field private mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "setBitmapDoneListener"
    .end annotation
.end field

.field private mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

.field private mSurfaceTextureHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sTextureHeight"
    .end annotation
.end field

.field private mSurfaceTextureWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sTextureWidth"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWaitTimeout:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "waitTimeout"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "backcamera"

    aput-object v1, v0, v2

    const-string v1, "frontcamera"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mInputNames:[Ljava/lang/String;

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputNames:[Ljava/lang/String;

    .line 171
    sput-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 172
    sput-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 173
    sput-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 174
    sput-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 179
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestCapture:Z

    .line 180
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    .line 181
    sput-boolean v4, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    .line 182
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    .line 183
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceCheck:Z

    .line 184
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    .line 185
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    .line 186
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    .line 187
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreviewCalledBeforeOpen:Z

    .line 188
    sput-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->closeCalledBeforeManualStop:Z

    .line 191
    const/4 v0, 0x0

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    .line 205
    sput v5, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    .line 206
    sput v5, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 223
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_3d2

    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mSourceCoords:[F

    .line 229
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform samplerExternalOES tex_sampler_0;\nuniform samplerExternalOES tex_sampler_1;\n"

    .line 228
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    .line 235
    const-string v0, "uniform sampler2D tex_sampler_2;\n#ifdef USE_OVERLAY_MASK\nuniform sampler2D tex_sampler_3;\n#endif\nuniform float rotate;\n"

    .line 234
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_UniformTexture:Ljava/lang/String;

    .line 242
    const-string v0, "uniform float start_x_pip;\nuniform float start_y_pip;\nuniform float end_x_pip;\nuniform float end_y_pip;\nuniform float width_scale;\nuniform float height_scale;\nuniform float pip_mirror;\nvarying vec2 v_texcoord;\n"

    .line 241
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultParameters:Ljava/lang/String;

    .line 252
    const-string v0, "    highp vec4 main_view;\n    highp vec4 pip_view;\n    highp vec4 rect_view;\n    highp vec2 pip_texcoord;\n    highp vec2 t_coord;\n"

    .line 251
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    .line 259
    const-string v0, "    const float zero_point_zero = 0.0;\n    const float one_point_zero = 1.0;\n    const float two_point_zero = 2.0;\n    const float window_ratio = 16.0/9.0;\n    const float pos_down = 0.39;\n    const float color_min_offset = 0.05;\n    const float color_max_offset = 0.95;\n"

    .line 258
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultConstValue:Ljava/lang/String;

    .line 268
    const-string v0, "    highp vec4 effect_mask; \n    highp vec2 effect_texcoord;\n    highp vec2 effect_texcoord_temp;\n"

    .line 267
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectMaskandCoord:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectMaskandCoord:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v1, "    highp vec4 effect_overlay; \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectOverlayandCoord:Ljava/lang/String;

    .line 277
    const-string v0, "    if (pip_mirror == one_point_zero) {\n        main_view = texture2D(tex_sampler_0, vec2(v_texcoord.y, one_point_zero - v_texcoord.x));\n        pip_view = texture2D(tex_sampler_1, vec2(one_point_zero - pip_texcoord.y, one_point_zero - pip_texcoord.x));\n    } else {\n        main_view = texture2D(tex_sampler_0, vec2(one_point_zero - v_texcoord.y, one_point_zero - v_texcoord.x));\n        pip_view = texture2D(tex_sampler_1, vec2(pip_texcoord.y, one_point_zero - pip_texcoord.x));\n    }\n"

    .line 276
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Default_Main_PIP_VIew:Ljava/lang/String;

    .line 286
    const-string v0, "    pip_texcoord.x = width_scale * (v_texcoord.x - start_x_pip);\n    pip_texcoord.y = height_scale * (v_texcoord.y - start_y_pip);\n"

    .line 285
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    .line 290
    const-string v0, "    t_coord = clamp( v_texcoord, vec2( start_x_pip , start_y_pip ), vec2( end_x_pip , end_y_pip ));\n"

    .line 289
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    .line 293
    const-string v0, "    if ( rotate == zero_point_zero ) {\n        effect_texcoord_temp = vec2(pip_texcoord.y, one_point_zero - pip_texcoord.x); \n        effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n#ifdef USE_OVERLAY_MASK\n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n#endif\n    } else if ( rotate == one_point_zero ) {\n        effect_texcoord_temp = vec2(pip_texcoord.x, pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( zero_point_zero <= effect_texcoord.y && effect_texcoord.y <= one_point_zero ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n#ifdef USE_OVERLAY_MASK\n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n#endif\n        } else {\n            effect_mask = vec4(one_point_zero,zero_point_zero,zero_point_zero,zero_point_zero); \n#ifdef USE_OVERLAY_MASK\n            effect_overlay = vec4(zero_point_zero,zero_point_zero,zero_point_zero,zero_point_zero); \n#endif\n        }\n    } else if ( rotate == two_point_zero ) {\n        effect_texcoord_temp = vec2(one_point_zero - pip_texcoord.y, pip_texcoord.x); \n        effect_texcoord.x = ( window_ratio ) * effect_texcoord_temp.x - pos_down;\n        effect_texcoord.y = effect_texcoord_temp.y;\n        effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n#ifdef USE_OVERLAY_MASK\n        effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n#endif\n    } else {\n        effect_texcoord_temp = vec2(one_point_zero - pip_texcoord.x, one_point_zero - pip_texcoord.y); \n        effect_texcoord.x = effect_texcoord_temp.x;\n        effect_texcoord.y = ( window_ratio ) * effect_texcoord_temp.y - pos_down;\n        if ( zero_point_zero <= effect_texcoord.y && effect_texcoord.y <= one_point_zero ){\n            effect_mask = texture2D(tex_sampler_2, effect_texcoord); \n#ifdef USE_OVERLAY_MASK\n            effect_overlay = texture2D(tex_sampler_3, effect_texcoord); \n#endif\n        } else {\n            effect_mask = vec4(one_point_zero,zero_point_zero,zero_point_zero,zero_point_zero); \n#ifdef USE_OVERLAY_MASK\n            effect_overlay = vec4(zero_point_zero,zero_point_zero,zero_point_zero,zero_point_zero); \n#endif\n        }\n    }\n"

    .line 292
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Set_Mask_and_Overlay:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    const-string v1, "    const float one_point_zero = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Default_Main_PIP_VIew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    const-string v1, "    pip_view = (t_coord != pip_texcoord) ? vec4(one_point_zero ,one_point_zero, one_point_zero ,one_point_zero) : pip_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const-string v1, "    gl_FragColor = (t_coord != v_texcoord) ? main_view : pip_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShader:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_UniformTexture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultConstValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    const-string v1, "    const float mask_offset = 0.6;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectMaskandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Default_Main_PIP_VIew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Set_Mask_and_Overlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string v1, "    if ( all( equal( t_coord, v_texcoord ) ) && ( effect_mask.g > mask_offset ) ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string v1, "        pip_view = vec4( one_point_zero, one_point_zero, one_point_zero, one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    const-string v1, "        pip_view = vec4( mix( main_view.xyz , pip_view.xyz, smoothstep(color_min_offset,color_max_offset,effect_mask.b) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    const-string v1, "    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : pip_view; \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithOvalblur:Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#define USE_OVERLAY_MASK\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_UniformTexture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 385
    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultConstValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectOverlayandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Default_Main_PIP_VIew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Set_Mask_and_Overlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 392
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string v1, "    if ( all( equal( t_coord, v_texcoord ) ) && ( effect_mask.r >= effect_mask.b ) ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    const-string v1, "        rect_view = main_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 395
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    const-string v1, "        rect_view = pip_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    const-string v1, "    if ( all( equal( t_coord, v_texcoord ) ) && effect_overlay.a == zero_point_zero ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string v1, "        rect_view = rect_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string v1, "        rect_view = vec4( mix( rect_view.xyz , effect_overlay.xyz, smoothstep(color_min_offset,color_max_offset,effect_overlay.a) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string v1, "    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : rect_view; \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithOverlay:Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#define USE_OVERLAY_MASK\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_UniformTexture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultConstValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 414
    const-string v1, "    const float zero_point_five = 0.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    const-string v1, "    const float effect_radius = 1.5;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 416
    const-string v1, "    const float m_pi_2 = 1.570963;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 417
    const-string v1, "    const float alpha = 3.750000;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 418
    const-string v1, "    const float radius2 = 0.661250;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 419
    const-string v1, "    const float factor = 1.610678;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_EffectOverlayandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    const-string v1, "    vec4 fish_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    const-string v1, "    vec2 fish_texcoord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string v1, "    vec2 coord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string v1, "    vec2 new_coord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    const-string v1, "    if ( pip_mirror == one_point_zero ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    const-string v1, "        main_view = texture2D( tex_sampler_0 , vec2( v_texcoord.y , one_point_zero - v_texcoord.x ));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    const-string v1, "        fish_texcoord = vec2( one_point_zero - pip_texcoord.y , one_point_zero - pip_texcoord.x );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    const-string v1, "        main_view = texture2D( tex_sampler_0 , vec2( one_point_zero - v_texcoord.y , one_point_zero - v_texcoord.x ));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string v1, "        fish_texcoord = vec2( pip_texcoord.y , one_point_zero - pip_texcoord.x );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    const-string v1, "    coord = fish_texcoord - vec2( zero_point_five , zero_point_five );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string v1, "    float dist = length( coord * effect_radius );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string v1, "    float radian = m_pi_2 - atan( alpha * sqrt( radius2 - dist * dist ), dist );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string v1, "    float scalar = radian * factor / dist;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    const-string v1, "    new_coord = coord * scalar + vec2( zero_point_five , zero_point_five );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string v1, "    fish_view = texture2D( tex_sampler_1, vec2( new_coord.x , new_coord.y ));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Set_Mask_and_Overlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    const-string v1, "    if ( all( equal( t_coord, v_texcoord ) ) && effect_mask.r > effect_mask.b ) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 443
    const-string v1, "        rect_view = vec4( mix( main_view.xyz , effect_overlay.xyz, smoothstep(color_min_offset,color_max_offset,effect_overlay.a) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    const-string v1, "        rect_view = vec4( mix( fish_view.xyz , effect_overlay.xyz, smoothstep(color_min_offset,color_max_offset,effect_overlay.a) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    const-string v1, "    if( effect_texcoord.x <= 0.0 || effect_texcoord.x >= 1.0 || effect_texcoord.y <= 0.02 || effect_texcoord.y >= 0.98 ) \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 448
    const-string v1, "        rect_view = main_view;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 449
    const-string v1, "    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : rect_view; \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 450
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithMaskFishEye:Ljava/lang/String;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultSetting:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    const-string v1, "uniform sampler2D tex_sampler_2;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    const-string v1, "uniform sampler2D tex_sampler_3;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    const-string v1, "uniform float pip_mirror;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    const-string v1, "varying vec2 v_texcoord;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    const-string v1, "void main() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    const-string v1, "    const float zero_point_zero = 0.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    const-string v1, "    const float one_point_zero = 1.0;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    const-string v1, "    const float x_coord_offset = 0.25;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    const-string v1, "    const float color_min_offset = 0.05;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    const-string v1, "    const float color_max_offset = 0.95;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    const-string v1, "    const float start_x_pip = zero_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    const-string v1, "    const float start_y_pip = zero_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    const-string v1, "    const float end_x_pip = one_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    const-string v1, "    const float end_y_pip = one_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    const-string v1, "    const float width_scale = one_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    const-string v1, "    const float height_scale = one_point_zero;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_DefaultViewandCoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_BasicPIPTexcoord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    const-string v1, "    if (pip_mirror == one_point_zero) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    const-string v1, "        main_view = texture2D(tex_sampler_0, vec2(v_texcoord.y - x_coord_offset , one_point_zero - v_texcoord.x));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    const-string v1, "        pip_view = texture2D(tex_sampler_1, vec2(one_point_zero - pip_texcoord.y - x_coord_offset, one_point_zero - pip_texcoord.x));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    const-string v1, "        main_view = texture2D(tex_sampler_0, vec2(one_point_zero - v_texcoord.y + x_coord_offset, one_point_zero - v_texcoord.x));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    const-string v1, "        pip_view = texture2D(tex_sampler_1, vec2(pip_texcoord.y + x_coord_offset, one_point_zero - pip_texcoord.x));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 479
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 480
    const-string v1, "    vec4 effect_mask = texture2D(tex_sampler_2, vec2(pip_texcoord.y, one_point_zero - pip_texcoord.x)); \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 481
    const-string v1, "    vec4 effect_overlay = texture2D(tex_sampler_3, vec2(pip_texcoord.y, one_point_zero - pip_texcoord.x)); \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->fs_Clamp_t_coord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    const-string v1, "    if ( all( equal( t_coord, v_texcoord ) ) && effect_mask.r > effect_mask.b) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    const-string v1, "        rect_view = vec4( mix( main_view.xyz , effect_overlay.xyz, smoothstep(color_min_offset,color_max_offset,effect_overlay.a) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string v1, "    } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    const-string v1, "        rect_view = vec4( mix( pip_view.xyz , effect_overlay.xyz, smoothstep(color_min_offset,color_max_offset,effect_overlay.a) ) , one_point_zero );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    const-string v1, "    gl_FragColor = ( t_coord != v_texcoord ) ? main_view : rect_view; \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithMaskSplit:Ljava/lang/String;

    .line 489
    return-void

    .line 223
    nop

    :array_3d2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xf0

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 554
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLearningDuration:I

    .line 71
    iput-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    .line 74
    iput-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    .line 77
    const/16 v0, 0x780

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenWidth:I

    .line 80
    const/16 v0, 0x438

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenHeight:I

    .line 83
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipPosX:I

    .line 86
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipPosY:I

    .line 89
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipWidth:I

    .line 92
    const/16 v0, 0x10e

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipHeight:I

    .line 95
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mRectThick:I

    .line 98
    iput-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mQuality:I

    .line 104
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I

    .line 111
    const/16 v0, 0x140

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraWidth:I

    .line 114
    iput v5, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraHeight:I

    .line 117
    const/16 v0, 0x140

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureWidth:I

    .line 120
    iput v5, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureHeight:I

    .line 123
    iput-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mWaitForNewFrame:Z

    .line 126
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mWaitTimeout:I

    .line 129
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    .line 132
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFps:I

    .line 135
    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraOrientation:I

    .line 138
    const-string v0, "auto"

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFocusmode:Ljava/lang/String;

    .line 141
    iput-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLogVerbose:Z

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    .line 1511
    new-instance v0, Lcom/lge/filterpacks/DualRecorderFilter$1;

    invoke-direct {v0, p0}, Lcom/lge/filterpacks/DualRecorderFilter$1;-><init>(Lcom/lge/filterpacks/DualRecorderFilter;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->CameraAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1517
    new-instance v0, Lcom/lge/filterpacks/DualRecorderFilter$2;

    invoke-direct {v0, p0}, Lcom/lge/filterpacks/DualRecorderFilter$2;-><init>(Lcom/lge/filterpacks/DualRecorderFilter;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 1531
    new-instance v0, Lcom/lge/filterpacks/DualRecorderFilter$3;

    invoke-direct {v0, p0}, Lcom/lge/filterpacks/DualRecorderFilter$3;-><init>(Lcom/lge/filterpacks/DualRecorderFilter;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 556
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameTransform:[F

    .line 557
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMappedCoords:[F

    .line 558
    return-void
.end method

.method private static DisplayCurrentState(Ljava/lang/String;)V
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1029
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mRequestCapture ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mRequestMaskUpdate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mCameraState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mCameracheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mSurfaceCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() misSetBitmapActive ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() mMaskChanged ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() manualStopPreviewCalledBeforeOpen ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreviewCalledBeforeOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void
.end method

.method private DisplayFPS(Landroid/filterfw/core/FilterContext;)V
    .registers 15
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    .line 832
    iget v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    rem-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_22

    .line 833
    iget-wide v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    .line 834
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 835
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    .line 846
    :cond_22
    :goto_22
    return-void

    .line 838
    :cond_23
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 839
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 840
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 841
    .local v0, "endTime":J
    const-string v2, "DualRecorderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Avg. frame duration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    const-string v4, " ms. Avg. fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    const-wide v6, 0x408f400000000000L    # 1000.0

    iget-wide v8, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    sub-long v8, v0, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 841
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iput-wide v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->startTime:J

    goto :goto_22
.end method

.method private static ShouldNotBeHere(Ljava/lang/String;)V
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1347
    const-string v0, "DualRecorderFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x2

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1351
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 1352
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1353
    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1356
    :cond_14
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 1357
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1358
    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1361
    :cond_1f
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    .line 1362
    return-void
.end method

.method private WaitForNewFrame()Z
    .registers 8

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    .line 790
    iget-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mWaitForNewFrame:Z

    if-eqz v3, :cond_21

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "waitCount":I
    :goto_8
    iget-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewFrameAvailable:Z

    if-eqz v3, :cond_23

    .line 806
    iget-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFirstFrame:Z

    if-eqz v3, :cond_19

    .line 807
    const/4 v1, 0x0

    .line 808
    .local v1, "waitCount2":I
    :goto_11
    iget-boolean v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewCameraFrameAvailable:Z

    if-eqz v3, :cond_42

    .line 821
    iput-boolean v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewCameraFrameAvailable:Z

    .line 822
    iput-boolean v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFirstFrame:Z

    .line 825
    .end local v1    # "waitCount2":I
    :cond_19
    iput-boolean v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewFrameAvailable:Z

    .line 826
    iget v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    .line 828
    .end local v0    # "waitCount":I
    :cond_21
    const/4 v2, 0x1

    :cond_22
    return v2

    .line 793
    .restart local v0    # "waitCount":I
    :cond_23
    if-ne v0, v6, :cond_2d

    .line 794
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Timeout waiting for new frame"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_2d
    sget-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v3, :cond_22

    .line 799
    const-wide/16 v4, 0x64

    :try_start_33
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_39

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 802
    :catch_39
    move-exception v3

    const-string v3, "DualRecorderFilter"

    const-string v4, "Interrupted while waiting for new frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 809
    .restart local v1    # "waitCount2":I
    :cond_42
    if-ne v1, v6, :cond_4c

    .line 810
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Timeout waiting for new frame"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :cond_4c
    sget-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v3, :cond_22

    .line 815
    const-wide/16 v4, 0x64

    :try_start_52
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_58

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 818
    :catch_58
    move-exception v3

    const-string v3, "DualRecorderFilter"

    const-string v4, "Interrupted while waiting for new frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method static synthetic access$0(Lcom/lge/filterpacks/DualRecorderFilter;Z)V
    .registers 2

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewFrameAvailable:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/filterpacks/DualRecorderFilter;Z)V
    .registers 2

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewCameraFrameAvailable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lge/filterpacks/DualRecorderFilter;)I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCaptureRotationDegree:I

    return v0
.end method

.method static synthetic access$3(Lcom/lge/filterpacks/DualRecorderFilter;)I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mQuality:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/filterpacks/DualRecorderFilter;)Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    return-object v0
.end method

.method private calculatePIPPosition()V
    .registers 10

    .prologue
    .line 772
    iget v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenWidth:I

    int-to-float v6, v6

    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_width:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 773
    .local v5, "width_scale":F
    iget v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenHeight:I

    int-to-float v6, v6

    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_height:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 775
    .local v2, "height_scale":F
    sget v6, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_x:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 776
    .local v3, "start_x":F
    sget v6, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_y:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenHeight:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 778
    .local v4, "start_y":F
    sget v6, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float v0, v3, v6

    .line 779
    .local v0, "end_x":F
    sget v6, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mScreenHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float v1, v4, v6

    .line 781
    .local v1, "end_y":F
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "start_x_pip"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "start_y_pip"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "end_x_pip"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 784
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "end_y_pip"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "width_scale"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 786
    iget-object v6, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v7, "height_scale"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    return-void
.end method

.method private createFormats()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 570
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureWidth:I

    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 573
    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .registers 15
    .param p1, "fps"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1229
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 1232
    .local v3, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v3, :cond_74

    .line 1233
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1234
    .local v0, "closestRange":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_54

    .line 1249
    :goto_1d
    const-string v4, "DualRecorderFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Requested fps: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1250
    const-string v6, ".Closest frame rate range: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1251
    aget v6, v0, v7

    int-to-double v6, v6

    div-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1252
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1253
    aget v6, v0, v8

    int-to-double v6, v6

    div-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1254
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1249
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-object v0

    .line 1234
    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1235
    .local v2, "range":[I
    aget v5, v2, v7

    mul-int/lit16 v6, p1, 0x3e8

    if-ge v5, v6, :cond_17

    .line 1236
    aget v5, v2, v8

    mul-int/lit16 v6, p1, 0x3e8

    if-le v5, v6, :cond_17

    .line 1237
    aget v5, v2, v7

    .line 1238
    aget v6, v0, v7

    if-le v5, v6, :cond_17

    .line 1239
    aget v5, v2, v8

    .line 1240
    aget v6, v0, v8

    if-ge v5, v6, :cond_17

    .line 1241
    move-object v0, v2

    goto :goto_17

    .line 1245
    .end local v0    # "closestRange":[I
    .end local v2    # "range":[I
    :cond_74
    const/4 v4, 0x2

    new-array v1, v4, [I

    fill-array-data v1, :array_7c

    .line 1246
    .local v1, "cr":[I
    move-object v0, v1

    .restart local v0    # "closestRange":[I
    goto :goto_1d

    .line 1245
    :array_7c
    .array-data 4
        0xbb8
        0x7530
    .end array-data
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x0

    .line 1171
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 1172
    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, -0x1

    .line 1173
    .local v2, "closestWidth":I
    const/4 v0, -0x1

    .line 1179
    .local v0, "closestHeight":I
    if-eqz v3, :cond_90

    .line 1180
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v6, v7, Landroid/hardware/Camera$Size;->width:I

    .line 1181
    .local v6, "smallestWidth":I
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v5, v7, Landroid/hardware/Camera$Size;->height:I

    .line 1182
    .local v5, "smallestHeight":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_69

    .line 1203
    const/4 v7, -0x1

    if-ne v2, v7, :cond_28

    .line 1206
    move v2, v6

    .line 1207
    move v0, v5

    .line 1219
    .end local v5    # "smallestHeight":I
    .end local v6    # "smallestWidth":I
    :cond_28
    :goto_28
    const-string v7, "DualRecorderFilter"

    .line 1220
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Requested resolution: ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1221
    const-string v9, "). Closest match: ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1222
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1219
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/4 v7, 0x2

    new-array v1, v7, [I

    aput v2, v1, v10

    const/4 v7, 0x1

    aput v0, v1, v7

    .line 1225
    .local v1, "closestSize":[I
    return-object v1

    .line 1182
    .end local v1    # "closestSize":[I
    .restart local v5    # "smallestHeight":I
    .restart local v6    # "smallestWidth":I
    :cond_69
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 1190
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, p1, :cond_83

    .line 1191
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    if-gt v8, p2, :cond_83

    .line 1192
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v2, :cond_83

    .line 1193
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v0, :cond_83

    .line 1194
    iget v2, v4, Landroid/hardware/Camera$Size;->width:I

    .line 1195
    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    .line 1197
    :cond_83
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v6, :cond_1d

    .line 1198
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v5, :cond_1d

    .line 1199
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    .line 1200
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1d

    .line 1210
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    .end local v5    # "smallestHeight":I
    .end local v6    # "smallestWidth":I
    :cond_90
    const/16 v2, 0x500

    .line 1211
    const/16 v0, 0x2d0

    goto :goto_28
.end method

.method public static isCameraOpened()Z
    .registers 1

    .prologue
    .line 1498
    sget-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    return v0
.end method

.method private static isMaskBitmapNull(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1339
    if-nez p0, :cond_9

    .line 1340
    const-string v0, "DualRecorderFilter.setPIPMask() : mbitmap == null."

    invoke-static {v0}, Lcom/lge/filterpacks/DualRecorderFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 1341
    const/4 v0, 0x1

    .line 1343
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private mCameraopen(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v2, 0x1

    .line 577
    const-string v1, "DualRecorderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DualRecorderFilter.mCameraopen() mCameraState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_62

    sget-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v1, :cond_62

    .line 582
    const-string v1, "DualRecorderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DualRecorderFilter.mCameraopen() mCamera = Camera.open(mCameraId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :try_start_3b
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    const/16 v3, 0x100

    invoke-static {v1, v3}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_a5

    .line 592
    :goto_45
    :try_start_45
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_c2

    move v1, v2

    :goto_4a
    sput-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    .line 594
    const-string v1, "DualRecorderFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DualRecorderFilter.mCameraopen() : mIsCameraOpened = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_62} :catch_b6

    .line 603
    :cond_62
    :goto_62
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_e4

    .line 604
    invoke-virtual {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 605
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "dual-recorder"

    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 606
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 608
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 609
    const/16 v3, 0x68

    .line 610
    const-wide/16 v4, 0x0

    .line 608
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    .line 611
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 613
    :try_start_96
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9d} :catch_c4

    .line 620
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 627
    :goto_a4
    return-void

    .line 589
    :catch_a5
    move-exception v1

    :try_start_a6
    const-string v1, "DualRecorderFilter"

    const-string v3, "DualRecorderFilter.Camera.openLegacy() is failed : try to Camera.open"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b5} :catch_b6

    goto :goto_45

    .line 597
    :catch_b6
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DualRecorderFilter"

    const-string v3, "DualRecorderFilter.mCameraopen() failed to open Camera"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c2
    const/4 v1, 0x0

    goto :goto_4a

    .line 614
    :catch_c4
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not bind camera surface texture: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e4
    const-string v1, "DualRecorderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DualRecorderFilter.mCameraopen() mCameraState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "DualRecorderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DualRecorderFilter.mCameraopen() mCamera = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4
.end method

.method public static manualStopPreview()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1478
    const-string v0, "manualStopPreview"

    invoke-static {v0}, Lcom/lge/filterpacks/DualRecorderFilter;->DisplayCurrentState(Ljava/lang/String;)V

    .line 1479
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->manualcheckstop()V

    .line 1480
    sget-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    if-eqz v0, :cond_39

    .line 1481
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter.manualStopPreview()  mCameracheck: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_38

    .line 1483
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1484
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1485
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    .line 1486
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    .line 1487
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->closeCalledBeforeManualStop:Z

    .line 1495
    :cond_38
    :goto_38
    return-void

    .line 1490
    :cond_39
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter.manualStopPreview() mCameracheck: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static manualcheckstop()V
    .registers 3

    .prologue
    .line 1464
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    .line 1466
    sget-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    if-nez v0, :cond_a

    .line 1467
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreviewCalledBeforeOpen:Z

    .line 1469
    :cond_a
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter.manualcheckstop() mCameraState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1445
    if-eqz p1, :cond_32

    if-eqz p0, :cond_32

    .line 1446
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1447
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1449
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1450
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_32

    .line 1451
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_33

    .line 1452
    const/4 p0, 0x0

    .line 1453
    move-object p0, v7

    .line 1460
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_32
    :goto_32
    return-object p0

    .line 1455
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_33
    move-exception v8

    .line 1457
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OutOfMemoryError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public static selectPIP(I)V
    .registers 1
    .param p0, "cameraId"    # I

    .prologue
    .line 1267
    sput p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSelectedPIP:I

    .line 1268
    return-void
.end method

.method public static setPIPMask(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1313
    sget-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    if-nez v0, :cond_25

    .line 1314
    sput-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    .line 1315
    if-nez p0, :cond_26

    .line 1316
    const/4 v0, 0x2

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1317
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 1318
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1319
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1327
    :cond_18
    :goto_18
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 1328
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1329
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1331
    :cond_23
    sput-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    .line 1333
    :cond_25
    return-void

    .line 1322
    :cond_26
    const/4 v0, 0x3

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1323
    sput-object p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1324
    sput-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    goto :goto_18
.end method

.method public static setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .registers 7
    .param p0, "mbitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mbitmap_overlay"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 1373
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter.setPIPMask() misSetBitmapActive :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    sget-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    if-nez v0, :cond_27

    .line 1375
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    .line 1377
    packed-switch p2, :pswitch_data_a6

    .line 1432
    const-string v0, "DualRecorderFilter.setPIPMask(default) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/DualRecorderFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 1435
    :cond_25
    :goto_25
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    .line 1437
    :cond_27
    return-void

    .line 1380
    :pswitch_28
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->isMaskBitmapNull(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1381
    if-nez p1, :cond_44

    .line 1383
    const/4 v0, 0x3

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1384
    sput-object p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1386
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    .line 1387
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1388
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1390
    :cond_41
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    goto :goto_25

    .line 1393
    :cond_44
    const-string v0, "DualRecorderFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DualRecorderFilter.setPIPMask() : mbitmap_overlay width = "

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

    .line 1394
    const/4 v0, 0x4

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1395
    sput-object p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1396
    sput-object p1, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1397
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    goto :goto_25

    .line 1403
    :pswitch_74
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->isMaskBitmapNull(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1404
    if-nez p1, :cond_82

    .line 1406
    const-string v0, "DualRecorderFilter.setPIPMask(1) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/DualRecorderFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    goto :goto_25

    .line 1409
    :cond_82
    const/16 v0, 0x9

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1410
    sput-object p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1411
    sput-object p1, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1412
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    goto :goto_25

    .line 1418
    :pswitch_8d
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->isMaskBitmapNull(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1419
    if-nez p1, :cond_9b

    .line 1420
    const-string v0, "DualRecorderFilter.setPIPMask(2) : Should not be here. **WARNING**"

    invoke-static {v0}, Lcom/lge/filterpacks/DualRecorderFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    goto :goto_25

    .line 1423
    :cond_9b
    const/16 v0, 0xe

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1424
    sput-object p0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1425
    sput-object p1, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1426
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    goto :goto_25

    .line 1377
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_28
        :pswitch_74
        :pswitch_8d
    .end packed-switch
.end method

.method public static setPIPPosition(IIII)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1280
    sput p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_x:I

    .line 1281
    sput p1, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_y:I

    .line 1282
    sput p2, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_width:I

    .line 1283
    sput p3, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_height:I

    .line 1284
    return-void
.end method

.method public static setPIPRectThick(I)V
    .registers 1
    .param p0, "mThick"    # I

    .prologue
    .line 1441
    sput p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPIPRectThick:I

    .line 1442
    return-void
.end method

.method public static setPIPRotate(I)V
    .registers 3
    .param p0, "incomedegree"    # I

    .prologue
    const/4 v1, 0x0

    .line 1293
    if-nez p0, :cond_6

    .line 1294
    sput v1, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    .line 1308
    :goto_5
    return-void

    .line 1296
    :cond_6
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_f

    .line 1297
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    goto :goto_5

    .line 1299
    :cond_f
    const/16 v0, 0xb4

    if-ne p0, v0, :cond_18

    .line 1300
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    goto :goto_5

    .line 1302
    :cond_18
    const/16 v0, 0x10e

    if-ne p0, v0, :cond_21

    .line 1303
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    goto :goto_5

    .line 1306
    :cond_21
    sput v1, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    goto :goto_5
.end method

.method public static takePreviewFrame()V
    .registers 1

    .prologue
    .line 1507
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestCapture:Z

    .line 1508
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1041
    const-string v0, "DualRecorderFilter"

    const-string v1, "DualRecorderFilter Filter Closing !"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    .line 1044
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    .line 1045
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreviewCalledBeforeOpen:Z

    .line 1046
    sput v4, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    .line 1047
    sput v4, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    .line 1049
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1f

    .line 1050
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1051
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1053
    :cond_1f
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_34

    .line 1054
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1055
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1056
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    .line 1057
    sput-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mIsCameraOpened:Z

    .line 1058
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/filterpacks/DualRecorderFilter;->closeCalledBeforeManualStop:Z

    .line 1061
    :cond_34
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3f

    .line 1062
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1063
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1066
    :cond_3f
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_4a

    .line 1067
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1068
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 1071
    :cond_4a
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_55

    .line 1072
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1073
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 1076
    :cond_55
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_60

    .line 1077
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1078
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 1081
    :cond_60
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6b

    .line 1082
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1083
    sput-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 1085
    :cond_6b
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mSourceListener:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    invoke-interface {v0, v2}, Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 1086
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v2, 0x7530

    .line 1101
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_22

    const-string v0, "framerate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1102
    invoke-virtual {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    .line 1104
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1105
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1107
    :cond_1b
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1110
    :cond_22
    const-string v0, "sTextureWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "sTextureHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1111
    :cond_32
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureWidth:I

    iget v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 1113
    :cond_3b
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .registers 5

    .prologue
    .line 1116
    monitor-enter p0

    .line 1117
    :try_start_1
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_d

    .line 1118
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1121
    :cond_d
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraWidth:I

    iget v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraHeight:I

    iget-object v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2, v3}, Lcom/lge/filterpacks/DualRecorderFilter;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 1122
    .local v0, "closestSize":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraWidth:I

    .line 1123
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraHeight:I

    .line 1125
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.getCameraParameters() : Try to setPreviewSize()."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1128
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1130
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFps:I

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2}, Lcom/lge/filterpacks/DualRecorderFilter;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    .line 1133
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.getCameraParameters() : Try to setPreviewFpsRange()."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x7530

    const/16 v3, 0x7530

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1140
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    if-nez v1, :cond_63

    .line 1142
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.getCameraParameters() : Try to setFocusMode()."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFocusmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1148
    :cond_63
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.getCameraParameters() : Try to setDisplayOrientation()."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_75

    .line 1152
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1156
    :cond_75
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.getCameraParameters() : DONE."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_80

    monitor-exit p0

    return-object v1

    .line 1116
    .end local v0    # "closestSize":[I
    :catchall_80
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 632
    const-string v1, "open"

    invoke-static {v1}, Lcom/lge/filterpacks/DualRecorderFilter;->DisplayCurrentState(Ljava/lang/String;)V

    .line 634
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 635
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/lge/filterpacks/DualRecorderFilter;->onFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 636
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mSourceListener:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    sget-object v2, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;->onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V

    .line 638
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open() mSourceListener Setted."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-wide/16 v2, 0x64

    :try_start_2b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_ac

    .line 647
    :goto_2e
    sget-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->closeCalledBeforeManualStop:Z

    if-eqz v1, :cond_3b

    .line 648
    const-string v1, "DualRecorderFilter"

    const-string v2, "closeCalledBeforeManualStop is ture : change mCameraState to true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sput-boolean v4, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    .line 652
    :cond_3b
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_10b

    sget-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v1, :cond_10b

    .line 655
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open() calling mCameraopen(context)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-direct {p0, p1}, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraopen(Landroid/filterfw/core/FilterContext;)V

    .line 659
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open() mCameraopen(context) done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    if-nez v1, :cond_b6

    .line 667
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_9e

    sget-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v1, :cond_9e

    .line 669
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open(mCameraId == 0 ) setting parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 672
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 674
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 676
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open(mCameraId == 0 ) setting parameters done."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open(mCameraId == 0 ) calling mCamera.startPreview()."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 683
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open(mCameraId == 0 ) calling mCamera.startPreview() done."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/lge/filterpacks/DualRecorderFilter$4;

    invoke-direct {v2, p0}, Lcom/lge/filterpacks/DualRecorderFilter$4;-><init>(Lcom/lge/filterpacks/DualRecorderFilter;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 721
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_9e
    :goto_9e
    iput-boolean v4, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFirstFrame:Z

    .line 722
    iput-boolean v5, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewFrameAvailable:Z

    .line 723
    iput-boolean v5, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mNewCameraFrameAvailable:Z

    .line 726
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open() done"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    .line 644
    :catch_ac
    move-exception v1

    const-string v1, "DualRecorderFilter"

    const-string v2, "Delay exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 700
    :cond_b6
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_e8

    sget-boolean v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v1, :cond_e8

    .line 702
    const-string v1, "DualRecorderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jae mCameraId 1 not setting onAutoFocus in, mCameraState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 705
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 706
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 707
    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_9e

    .line 711
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_e8
    const-string v1, "DualRecorderFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DualRecorderFilter.open() else mCameraopen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 717
    :cond_10b
    const-string v1, "DualRecorderFilter"

    const-string v2, "DualRecorderFilter.open() Camera is not opened"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 732
    sput-boolean v6, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    .line 735
    const-string v0, "DualRecorderFilter"

    const-string v1, "Preparing DualRecorderFilter!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->createFormats()V

    .line 741
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 742
    const/16 v2, 0x68

    .line 743
    const-wide/16 v4, 0x0

    .line 741
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    .line 745
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShader:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram:Landroid/filterfw/core/ShaderProgram;

    .line 746
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithOvalblur:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithOvalblur:Landroid/filterfw/core/ShaderProgram;

    .line 747
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithOverlay:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

    .line 748
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithMaskFishEye:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

    .line 749
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    sget-object v1, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderShaderwithMaskSplit:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithMaskSplit:Landroid/filterfw/core/ShaderProgram;

    .line 751
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 753
    iput v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    .line 754
    iput v3, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    .line 755
    sput v6, Lcom/lge/filterpacks/DualRecorderFilter;->mSelectedPIP:I

    .line 757
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipPosX:I

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_x:I

    .line 758
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipPosY:I

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_y:I

    .line 759
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipWidth:I

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_width:I

    .line 760
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mPipHeight:I

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mPositionPIP_height:I

    .line 762
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mRectThick:I

    sput v0, Lcom/lge/filterpacks/DualRecorderFilter;->mPIPRectThick:I

    .line 764
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 16
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v13, 0x2601

    const/4 v12, 0x1

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    .line 852
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    if-lez v7, :cond_c

    .line 853
    sput-boolean v12, Lcom/lge/filterpacks/DualRecorderFilter;->mCameracheck:Z

    .line 855
    :cond_c
    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraState:Z

    if-eqz v7, :cond_1d9

    .line 857
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    iget v8, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLearningDuration:I

    if-ne v7, v8, :cond_26

    .line 859
    const-string v7, "DualRecorderFilter"

    const-string v8, "DualRecorderFilter.process() Learning done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    if-eqz v7, :cond_26

    .line 862
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    invoke-interface {v7, p0}, Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;->onLearningDone(Lcom/lge/filterpacks/DualRecorderFilter;)V

    .line 865
    :cond_26
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->WaitForNewFrame()Z

    move-result v7

    if-nez v7, :cond_34

    .line 867
    const-string v7, "DualRecorderFilter"

    const-string v8, "DualRecorderFilter.process() Wait Error - called manual stopPreview"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_33
    return-void

    .line 872
    :cond_34
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 873
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 875
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    if-lt v7, v10, :cond_160

    .line 877
    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    if-eqz v7, :cond_4c

    .line 878
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mNextMaskMode:I

    sput v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    .line 879
    sput-boolean v11, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestMaskUpdate:Z

    .line 882
    :cond_4c
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    rem-int/lit8 v3, v7, 0x5

    .line 883
    .local v3, "maskFrameNumber":I
    new-array v0, v3, [Landroid/filterfw/core/Frame;

    .line 885
    .local v0, "cameraInputs":[Landroid/filterfw/core/Frame;
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    if-eq v7, v9, :cond_d4

    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    if-eqz v7, :cond_d4

    .line 886
    const v7, 0x8192

    const/16 v8, 0x1102

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glHint(II)V

    .line 888
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sget-object v8, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    .line 891
    .local v4, "maskformat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/GLFrame;

    sput-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    .line 892
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    sget-object v8, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/GLFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 893
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v7}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 894
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    const/16 v8, 0x2801

    invoke-virtual {v7, v8, v13}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 895
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    const/16 v8, 0x2800

    invoke-virtual {v7, v8, v13}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 897
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    if-eq v7, v10, :cond_d2

    .line 898
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sget-object v8, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v5

    .line 901
    .local v5, "maskformatNew":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    check-cast v7, Landroid/filterfw/core/GLFrame;

    sput-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    .line 902
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    sget-object v8, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/GLFrame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 903
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v7}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 904
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    const/16 v8, 0x2801

    invoke-virtual {v7, v8, v13}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 905
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    const/16 v8, 0x2800

    invoke-virtual {v7, v8, v13}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 908
    .end local v5    # "maskformatNew":Landroid/filterfw/core/FrameFormat;
    :cond_d2
    sput-boolean v11, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    .line 911
    .end local v4    # "maskformat":Landroid/filterfw/core/FrameFormat;
    :cond_d4
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mSelectedPIP:I

    if-ne v7, v12, :cond_17b

    .line 912
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v11

    .line 913
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v12

    .line 919
    :goto_e0
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    sparse-switch v7, :sswitch_data_1e2

    .line 949
    const-string v7, "DualRecorderFilter.process(default) : Should not be here. **WARNING**"

    invoke-static {v7}, Lcom/lge/filterpacks/DualRecorderFilter;->ShouldNotBeHere(Ljava/lang/String;)V

    .line 950
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 951
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->calculatePIPPosition()V

    .line 955
    :goto_f1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 957
    .local v6, "output":Landroid/filterfw/core/Frame;
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraId:I

    sget v8, Lcom/lge/filterpacks/DualRecorderFilter;->mSelectedPIP:I

    if-ne v7, v8, :cond_1cb

    .line 958
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v8, "pip_mirror"

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    :goto_10e
    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_11d

    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_11d

    sget v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskMode:I

    if-ne v7, v10, :cond_12a

    .line 964
    :cond_11d
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v8, "rotate"

    sget v9, Lcom/lge/filterpacks/DualRecorderFilter;->degree:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    :cond_12a
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v0, v6}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 969
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v7}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 970
    const/4 v0, 0x0

    .line 972
    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestCapture:Z

    if-eqz v7, :cond_158

    .line 973
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 975
    .local v2, "mPreviewFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 976
    .local v1, "mPreviewBitmap_origin":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/lge/filterpacks/DualRecorderFilter$5;

    invoke-direct {v8, p0, v1, v2}, Lcom/lge/filterpacks/DualRecorderFilter$5;-><init>(Lcom/lge/filterpacks/DualRecorderFilter;Landroid/graphics/Bitmap;Landroid/filterfw/core/Frame;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1001
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1002
    sput-boolean v11, Lcom/lge/filterpacks/DualRecorderFilter;->mRequestCapture:Z

    .line 1004
    .end local v1    # "mPreviewBitmap_origin":Landroid/graphics/Bitmap;
    .end local v2    # "mPreviewFrame":Landroid/filterfw/core/Frame;
    :cond_158
    const-string v7, "video"

    invoke-virtual {p0, v7, v6}, Lcom/lge/filterpacks/DualRecorderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 1005
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 1008
    .end local v0    # "cameraInputs":[Landroid/filterfw/core/Frame;
    .end local v3    # "maskFrameNumber":I
    .end local v6    # "output":Landroid/filterfw/core/Frame;
    :cond_160
    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    if-eqz v7, :cond_173

    sget-boolean v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskChanged:Z

    if-nez v7, :cond_173

    .line 1009
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    if-eqz v7, :cond_171

    .line 1010
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    invoke-interface {v7, p0}, Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;->onSetBitmapDone(Lcom/lge/filterpacks/DualRecorderFilter;)V

    .line 1012
    :cond_171
    sput-boolean v11, Lcom/lge/filterpacks/DualRecorderFilter;->misSetBitmapActive:Z

    .line 1014
    :cond_173
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mFrameCount:I

    goto/16 :goto_33

    .line 915
    .restart local v0    # "cameraInputs":[Landroid/filterfw/core/Frame;
    .restart local v3    # "maskFrameNumber":I
    :cond_17b
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v11

    .line 916
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v12

    goto/16 :goto_e0

    .line 921
    :sswitch_185
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 922
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->calculatePIPPosition()V

    goto/16 :goto_f1

    .line 925
    :sswitch_18e
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v9

    .line 926
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithOvalblur:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 927
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->calculatePIPPosition()V

    goto/16 :goto_f1

    .line 931
    :sswitch_19b
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v9

    .line 932
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v10

    .line 933
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithOverlay:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 934
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->calculatePIPPosition()V

    goto/16 :goto_f1

    .line 937
    :sswitch_1ac
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v9

    .line 938
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v10

    .line 939
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithMaskFishEye:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    .line 940
    invoke-direct {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->calculatePIPPosition()V

    goto/16 :goto_f1

    .line 943
    :sswitch_1bd
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mMaskFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v9

    .line 944
    sget-object v7, Lcom/lge/filterpacks/DualRecorderFilter;->mOverlayFrame:Landroid/filterfw/core/GLFrame;

    aput-object v7, v0, v10

    .line 945
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgramwithMaskSplit:Landroid/filterfw/core/ShaderProgram;

    iput-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    goto/16 :goto_f1

    .line 960
    .restart local v6    # "output":Landroid/filterfw/core/Frame;
    :cond_1cb
    iget-object v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mDualRecorderProgram_selected:Landroid/filterfw/core/ShaderProgram;

    const-string v8, "pip_mirror"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_10e

    .line 1024
    .end local v0    # "cameraInputs":[Landroid/filterfw/core/Frame;
    .end local v3    # "maskFrameNumber":I
    .end local v6    # "output":Landroid/filterfw/core/Frame;
    :cond_1d9
    iget v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mProcessCount:I

    goto/16 :goto_33

    .line 919
    nop

    :sswitch_data_1e2
    .sparse-switch
        0x2 -> :sswitch_185
        0x3 -> :sswitch_18e
        0x4 -> :sswitch_19b
        0x9 -> :sswitch_1ac
        0xe -> :sswitch_1bd
    .end sparse-switch
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraWidth:I

    iget v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1164
    iput-object p1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 1165
    invoke-virtual {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1166
    sget-object v0, Lcom/lge/filterpacks/DualRecorderFilter;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1168
    :cond_17
    monitor-exit p0

    return-void

    .line 1163
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setupPorts()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 565
    const-string v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/filterpacks/DualRecorderFilter;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 567
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mSurfaceTextureFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1094
    :cond_9
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_12

    .line 1095
    iget-object v0, p0, Lcom/lge/filterpacks/DualRecorderFilter;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 1097
    :cond_12
    return-void
.end method
