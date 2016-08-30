.class public Lcom/lge/cic/eden/db/table/FaceInfoTable;
.super Ljava/lang/Object;
.source "FaceInfoTable.java"

# interfaces
.implements Lcom/lge/cic/eden/db/table/TableInfo;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.eden.provider"

.field public static final FACE_ID:Ljava/lang/String; = "FACE_ID"

.field public static final FACE_RECT_BOTTOM:Ljava/lang/String; = "FACE_RECT_BOTTOM"

.field public static final FACE_RECT_LEFT:Ljava/lang/String; = "FACE_RECT_LEFT"

.field public static final FACE_RECT_RIGHT:Ljava/lang/String; = "FACE_RECT_RIGHT"

.field public static final FACE_RECT_TOP:Ljava/lang/String; = "FACE_RECT_TOP"

.field public static final MEDIA_ID:Ljava/lang/String; = "MEDIA_ID"

.field public static final TABLE_NAME:Ljava/lang/String; = "FACEINFO"

.field public static final TABLE_URI:Landroid/net/Uri;

.field public static final columnList:[Ljava/lang/String;

.field private static final instance:Lcom/lge/cic/eden/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/cic/eden/utils/Singleton",
            "<",
            "Lcom/lge/cic/eden/db/table/TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final primaryColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    const-string v0, "content://com.lge.cic.eden.provider/FaceInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->TABLE_URI:Landroid/net/Uri;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    const-string v1, "MEDIA_ID"

    aput-object v1, v0, v3

    .line 22
    const-string v1, "FACE_ID"

    aput-object v1, v0, v4

    .line 23
    const-string v1, "FACE_RECT_LEFT"

    aput-object v1, v0, v5

    .line 24
    const-string v1, "FACE_RECT_TOP"

    aput-object v1, v0, v6

    .line 25
    const-string v1, "FACE_RECT_RIGHT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 26
    const-string v2, "FACE_RECT_BOTTOM"

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->columnList:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    const-string v1, "MEDIA_ID"

    aput-object v1, v0, v3

    .line 31
    const-string v1, "FACE_RECT_LEFT"

    aput-object v1, v0, v4

    .line 32
    const-string v1, "FACE_RECT_TOP"

    aput-object v1, v0, v5

    .line 33
    const-string v1, "FACE_RECT_RIGHT"

    aput-object v1, v0, v6

    .line 34
    const-string v1, "FACE_RECT_BOTTOM"

    aput-object v1, v0, v7

    .line 29
    sput-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->primaryColumns:[Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/lge/cic/eden/db/table/FaceInfoTable$1;

    invoke-direct {v0}, Lcom/lge/cic/eden/db/table/FaceInfoTable$1;-><init>()V

    sput-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    .line 44
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static get()Lcom/lge/cic/eden/db/table/TableInfo;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->instance:Lcom/lge/cic/eden/utils/Singleton;

    invoke-virtual {v0}, Lcom/lge/cic/eden/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/table/TableInfo;

    return-object v0
.end method


# virtual methods
.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->columnList:[Ljava/lang/String;

    return-object v0
.end method

.method public getCreateStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "FACEINFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "MEDIA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "FACE_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "FACE_RECT_LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REAL NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "FACE_RECT_TOP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REAL NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "FACE_RECT_RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REAL NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "FACE_RECT_BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " REAL NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "PRIMARY KEY(MEDIA_ID, FACE_RECT_LEFT, FACE_RECT_TOP, FACE_RECT_RIGHT, FACE_RECT_BOTTOM)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDropStatement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const-string v0, "DROP TABLE IF EXISTS FACEINFO"

    return-object v0
.end method

.method public getPrimaryColumns()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->primaryColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string v0, "FACEINFO"

    return-object v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 70
    sget-object v0, Lcom/lge/cic/eden/db/table/FaceInfoTable;->TABLE_URI:Landroid/net/Uri;

    return-object v0
.end method
