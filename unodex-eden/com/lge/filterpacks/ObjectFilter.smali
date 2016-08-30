.class public Lcom/lge/filterpacks/ObjectFilter;
.super Landroid/filterfw/core/Filter;
.source "ObjectFilter.java"


# static fields
.field private static final OBJECT_TRACKING_AVERAGE_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ObjectFilter"

.field private static mAverageOT:Z

.field private static mFrameCount:I

.field private static mObTracking:Z

.field private static mObjectHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "objectHeight"
    .end annotation
.end field

.field private static mObjectWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "objectWidth"
    .end annotation
.end field

.field private static mObjectX:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "initObjectX"
    .end annotation
.end field

.field private static mObjectY:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "initObjectY"
    .end annotation
.end field

.field private static final mOutputNames:[Ljava/lang/String;

.field private static mPosX:[I

.field private static mPosY:[I

.field private static mProgram:Landroid/filterfw/core/ShaderProgram;

.field private static mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "previewHeight"
    .end annotation
.end field

.field private static mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "previewWidth"
    .end annotation
.end field


# instance fields
.field private final mFragShader:Ljava/lang/String;

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 21
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    .line 24
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    .line 27
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mScreenWidth:I

    .line 30
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mScreenHeight:I

    .line 33
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectX:I

    .line 36
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectY:I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "video"

    aput-object v1, v0, v2

    sput-object v0, Lcom/lge/filterpacks/ObjectFilter;->mOutputNames:[Ljava/lang/String;

    .line 62
    sput-boolean v2, Lcom/lge/filterpacks/ObjectFilter;->mObTracking:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nuniform float start_x;\nuniform float start_y;\nuniform float end_x;\nuniform float end_y;\nvoid main() {\n\tvec2 t_coord = clamp(v_texcoord, vec2(start_x, start_y), vec2(end_x, end_y));\n\tgl_FragColor = texture2D(tex_sampler_0, t_coord);\n}\n"

    iput-object v0, p0, Lcom/lge/filterpacks/ObjectFilter;->mFragShader:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private static clipX(I)I
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 204
    sget v1, Lcom/lge/filterpacks/ObjectFilter;->mScreenWidth:I

    sget v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    sub-int v0, v1, v2

    .line 205
    .local v0, "th":I
    if-le p0, v0, :cond_9

    .end local v0    # "th":I
    :goto_8
    return v0

    .restart local v0    # "th":I
    :cond_9
    if-gez p0, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    move v0, p0

    goto :goto_8
.end method

.method private static clipY(I)I
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 197
    sget v1, Lcom/lge/filterpacks/ObjectFilter;->mScreenHeight:I

    sget v2, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    sub-int v0, v1, v2

    .line 198
    .local v0, "th":I
    if-le p0, v0, :cond_9

    .end local v0    # "th":I
    :goto_8
    return v0

    .restart local v0    # "th":I
    :cond_9
    if-gez p0, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    move v0, p0

    goto :goto_8
.end method

.method private static initValues()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 222
    sput v2, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    .line 223
    sput-boolean v2, Lcom/lge/filterpacks/ObjectFilter;->mAverageOT:Z

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v1, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    .line 229
    return-void

    .line 226
    :cond_c
    sget-object v1, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    aput v2, v1, v0

    .line 227
    sget-object v1, Lcom/lge/filterpacks/ObjectFilter;->mPosY:[I

    aput v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private setObjectPosition()V
    .registers 8

    .prologue
    .line 90
    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mObjectX:I

    int-to-float v4, v4

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mScreenWidth:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 91
    .local v2, "start_x":F
    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mObjectY:I

    int-to-float v4, v4

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mScreenHeight:I

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 92
    .local v3, "start_y":F
    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    int-to-float v4, v4

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v0, v2, v4

    .line 93
    .local v0, "end_x":F
    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    int-to-float v4, v4

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 95
    .local v1, "end_y":F
    sget-object v4, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v5, "start_x"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    sget-object v4, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v5, "start_y"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    sget-object v4, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v5, "end_x"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    sget-object v4, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v5, "end_y"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v4, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    sub-float v5, v0, v2

    sub-float v6, v1, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 100
    return-void
.end method

.method public static setObjectTrackingMode(Z)V
    .registers 1
    .param p0, "mode"    # Z

    .prologue
    .line 212
    sput-boolean p0, Lcom/lge/filterpacks/ObjectFilter;->mObTracking:Z

    .line 214
    if-nez p0, :cond_7

    .line 215
    invoke-static {}, Lcom/lge/filterpacks/ObjectFilter;->initValues()V

    .line 217
    :cond_7
    return-void
.end method

.method private static updateManualPosition(II)V
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 190
    sget v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    invoke-static {v0}, Lcom/lge/filterpacks/ObjectFilter;->clipX(I)I

    move-result v0

    sput v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectX:I

    .line 191
    sget v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/lge/filterpacks/ObjectFilter;->clipY(I)I

    move-result v0

    sput v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectY:I

    .line 192
    return-void
.end method

.method private static updateObTrackingPosition(II)V
    .registers 8
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 160
    sget-object v3, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p0, v5

    invoke-static {v5}, Lcom/lge/filterpacks/ObjectFilter;->clipX(I)I

    move-result v5

    aput v5, v3, v4

    .line 161
    sget-object v3, Lcom/lge/filterpacks/ObjectFilter;->mPosY:[I

    sget v4, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    sget v5, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p1, v5

    invoke-static {v5}, Lcom/lge/filterpacks/ObjectFilter;->clipY(I)I

    move-result v5

    aput v5, v3, v4

    .line 163
    sget-boolean v3, Lcom/lge/filterpacks/ObjectFilter;->mAverageOT:Z

    if-eqz v3, :cond_58

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "sumX":I
    const/4 v2, 0x0

    .line 167
    .local v2, "sumY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    sget-object v3, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    array-length v3, v3

    if-lt v0, v3, :cond_4b

    .line 171
    div-int/lit8 v3, v1, 0xa

    sput v3, Lcom/lge/filterpacks/ObjectFilter;->mObjectX:I

    .line 172
    div-int/lit8 v3, v2, 0xa

    sput v3, Lcom/lge/filterpacks/ObjectFilter;->mObjectY:I

    .line 177
    .end local v0    # "i":I
    .end local v1    # "sumX":I
    .end local v2    # "sumY":I
    :goto_34
    sget v3, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    .line 178
    sget v3, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4a

    .line 179
    const/4 v3, 0x0

    sput v3, Lcom/lge/filterpacks/ObjectFilter;->mFrameCount:I

    .line 181
    sget-boolean v3, Lcom/lge/filterpacks/ObjectFilter;->mAverageOT:Z

    if-nez v3, :cond_4a

    .line 182
    const/4 v3, 0x1

    sput-boolean v3, Lcom/lge/filterpacks/ObjectFilter;->mAverageOT:Z

    .line 185
    :cond_4a
    return-void

    .line 168
    .restart local v0    # "i":I
    .restart local v1    # "sumX":I
    .restart local v2    # "sumY":I
    :cond_4b
    sget-object v3, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    .line 169
    sget-object v3, Lcom/lge/filterpacks/ObjectFilter;->mPosY:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 174
    .end local v0    # "i":I
    .end local v1    # "sumX":I
    .end local v2    # "sumY":I
    :cond_58
    invoke-static {p0, p1}, Lcom/lge/filterpacks/ObjectFilter;->updateManualPosition(II)V

    goto :goto_34
.end method

.method public static updateObjPosition(II)V
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 149
    const-string v0, "ObjectFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateObjPosition - mObTracking: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/filterpacks/ObjectFilter;->mObTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-boolean v0, Lcom/lge/filterpacks/ObjectFilter;->mObTracking:Z

    if-eqz v0, :cond_32

    .line 151
    invoke-static {p0, p1}, Lcom/lge/filterpacks/ObjectFilter;->updateObTrackingPosition(II)V

    .line 155
    :goto_31
    return-void

    .line 153
    :cond_32
    invoke-static {p0, p1}, Lcom/lge/filterpacks/ObjectFilter;->updateManualPosition(II)V

    goto :goto_31
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 7
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v1, "ObjectFilter"

    const-string v2, "[SmartZoom] ObjectFilter:getOutputFormat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 139
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Lcom/lge/filterpacks/ObjectFilter;->mOutputNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 140
    invoke-virtual {v0, v3, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 142
    :cond_1b
    return-object v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x3

    .line 119
    const-string v0, "ObjectFilter"

    const-string v1, "[SmartZoom] ObjectFilter:prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nuniform float start_x;\nuniform float start_y;\nuniform float end_x;\nuniform float end_y;\nvoid main() {\n\tvec2 t_coord = clamp(v_texcoord, vec2(start_x, start_y), vec2(end_x, end_y));\n\tgl_FragColor = texture2D(tex_sampler_0, t_coord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 121
    sget v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectWidth:I

    sget v1, Lcom/lge/filterpacks/ObjectFilter;->mObjectHeight:I

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/filterpacks/ObjectFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    .line 124
    new-array v0, v3, [I

    sput-object v0, Lcom/lge/filterpacks/ObjectFilter;->mPosX:[I

    .line 125
    new-array v0, v3, [I

    sput-object v0, Lcom/lge/filterpacks/ObjectFilter;->mPosY:[I

    .line 127
    invoke-static {}, Lcom/lge/filterpacks/ObjectFilter;->initValues()V

    .line 128
    sget v0, Lcom/lge/filterpacks/ObjectFilter;->mObjectX:I

    sget v1, Lcom/lge/filterpacks/ObjectFilter;->mObjectY:I

    invoke-static {v0, v1}, Lcom/lge/filterpacks/ObjectFilter;->updateObjPosition(II)V

    .line 129
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    .line 76
    const-string v2, "video"

    invoke-virtual {p0, v2}, Lcom/lge/filterpacks/ObjectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 77
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/filterpacks/ObjectFilter;->mOutputFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 79
    .local v1, "output":Landroid/filterfw/core/Frame;
    invoke-direct {p0}, Lcom/lge/filterpacks/ObjectFilter;->setObjectPosition()V

    .line 81
    sget-object v2, Lcom/lge/filterpacks/ObjectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v0, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 83
    const-string v2, "video"

    invoke-virtual {p0, v2, v1}, Lcom/lge/filterpacks/ObjectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 84
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 85
    return-void
.end method

.method public setupPorts()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 107
    const-string v2, "ObjectFilter"

    const-string v3, "[SmartZoom] ObjectFilter:setupPorts"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "video"

    const/4 v3, 0x3

    invoke-static {v3, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/filterpacks/ObjectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 110
    sget-object v2, Lcom/lge/filterpacks/ObjectFilter;->mOutputNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_15
    if-lt v1, v3, :cond_18

    .line 113
    return-void

    .line 110
    :cond_18
    aget-object v0, v2, v1

    .line 111
    .local v0, "outputName":Ljava/lang/String;
    const-string v4, "video"

    invoke-virtual {p0, v0, v4}, Lcom/lge/filterpacks/ObjectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method
