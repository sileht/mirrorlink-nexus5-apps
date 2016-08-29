.class public interface abstract Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final DIGEST:Ljava/lang/String; = "digest"

.field public static final DIGEST_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "digestAlgID"

.field public static final SIGNATURE:Ljava/lang/String; = "encryptedDigest"


# virtual methods
.method public abstract getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation
.end method
