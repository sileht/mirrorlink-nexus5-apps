.class public Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field static final oidBase:Ljava/lang/String;

.field static final oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x10

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/crypto/params/ECDomainParameters;

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v8, v0, [Lorg/bouncycastle/math/ec/ECCurve$F2m;

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xa3

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x7

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v9, "5FF6108462A2DC8210AB403925E638A19C1455D21"

    invoke-direct {v6, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v7

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xa7

    const/4 v2, 0x6

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "6EE3CEEB230811759F20518A0930F1A4315A827DAC"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v11

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xad

    const/16 v4, 0xa

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v2, "108576C80499DB2FC16EDDF6853BBB278F6B6FB437D9"

    invoke-direct {v6, v2, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v12

    const/4 v9, 0x3

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xb3

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v2, "4A6E0856526436F2F88DD07A341E32D04184572BEB710"

    invoke-direct {v6, v2, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v9

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xbf

    const/16 v2, 0x9

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "7BC86E2102902EC4D5890E8B6B4981ff27E0482750FEFC03"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v13

    const/4 v9, 0x5

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0xe9

    const/16 v4, 0x9

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v2, "06973B15095675534C7CF7E64A21BD54EF5DD3B8A0326AA936ECE454D2C"

    invoke-direct {v6, v2, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move v2, v11

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v9

    const/4 v0, 0x6

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v2, 0x101

    const/16 v3, 0xc

    sget-object v4, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ZERO:Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "1CEF494720115657E18F938D7A7942394FF9425C1458C57861F9EEA6ADBE3BE10"

    invoke-direct {v5, v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v8, v0

    const/4 v9, 0x7

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x133

    const/16 v4, 0x8

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v2, "393C7F7D53666B5054B5E6C6D3DE94F4296C0C599E2E2E241050DF18B6090BDC90186904968BB"

    invoke-direct {v6, v2, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move v2, v12

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v9

    const/16 v0, 0x8

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v2, 0x16f

    const/16 v3, 0x15

    sget-object v4, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "43FC8AD242B0B7A6F3D1627AD5654447556B47BF6AA4A64B0C2AFE42CADAB8F93D92394C79A79755437B56995136"

    invoke-direct {v5, v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v8, v0

    const/16 v9, 0x9

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    const/16 v1, 0x1af

    const/4 v3, 0x3

    const/4 v4, 0x5

    sget-object v5, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->ONE:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v2, "03CE10490F6A708FC26DFE8C3D27C4F94E690134D5BFF988D8D28AAEAEDE975936C66BAC536B18AE2DC312CA493117DAA469C640CAF3"

    invoke-direct {v6, v2, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v8, v9

    const/16 v0, 0xa

    new-array v1, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v0, v8, v7

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "2E2F85F5DD74CE983A5C4237229DAF8A3F35823BE"

    invoke-direct {v2, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "3826F008A8C51D7B95284D9D03FF0E00CE2CD723A"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v1, v7

    aget-object v0, v8, v11

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "7A1F6653786A68192803910A3D30B2A2018B21CD54"

    invoke-direct {v2, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "5F49EB26781C0EC6B8909156D98ED435E45FD59918"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v1, v11

    aget-object v0, v8, v12

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "4D41A619BCC6EADF0448FA22FAD567A9181D37389CA"

    invoke-direct {v2, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "10B51CC12849B234C75E6DD2028BF7FF5C1CE0D991A1"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v1, v12

    const/4 v0, 0x3

    const/4 v2, 0x3

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "6BA06FE51464B2BD26DC57F48819BA9954667022C7D03"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "25FBC363582DCEC065080CA8287AAFF09788A66DC3A9E"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v0, v8, v13

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "714114B762F2FF4A7912A6D2AC58B9B5C2FCFE76DAEB7129"

    invoke-direct {v2, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "29C41E568B77C617EFE5902F11DB96FA9613CD8D03DB08DA"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v1, v13

    const/4 v0, 0x5

    const/4 v2, 0x5

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "3FCDA526B6CDF83BA1118DF35B3C31761D3545F32728D003EEB25EFE96"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "9CA8B57A934C54DEEDA9E54A7BBAD95E3B2E91C54D32BE0B9DF96D8D35"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const/4 v2, 0x6

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "02A29EF207D0E9B6C55CD260B306C7E007AC491CA1B10C62334A9E8DCD8D20FB7"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "10686D41FF744D4449FCCF6D8EEA03102E6812C93A9D60B978B702CF156D814EF"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const/4 v2, 0x7

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "216EE8B189D291A0224984C1E92F1D16BF75CCD825A087A239B276D3167743C52C02D6E7232AA"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "5D9306BACD22B7FAEB09D2E049C6E2866C5D1677762A8F2F2DC9A11C7F7BE8340AB2237C7F2A0"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const/16 v2, 0x8

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "324A6EDDD512F08C49A99AE0D3F961197A76413E7BE81A400CA681E09639B5FE12E59A109F78BF4A373541B3B9A1"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "1AB597A5B4477F59E39539007C7F977D1A567B92B043A49C6B61984C3FE3481AAF454CD41BA1F051626442B3C10"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const/16 v2, 0x9

    aget-object v2, v8, v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "1A62BA79D98133A16BBAE7ED9A8E03C32E0824D57AEF72F88986874E5AAE49C27BED49A2A95058068426C2171E99FD3B43C5947C857D"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "70B5E1E14031C1F70BBEFE96BDDE66F451754B4CA5F48DA241F331AA396B8D1839A855C1769B1EA14BA53308B5E2723724E090E02DB9"

    invoke-direct {v4, v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v3, "400000000000000000002BEC12BE2262D39BCF14D"

    invoke-direct {v0, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v7

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v3, "3FFFFFFFFFFFFFFFFFFFFFB12EBCC7D7F29FF7701F"

    invoke-direct {v0, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v11

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v3, "800000000000000000000189B4E67606E3825BB2831"

    invoke-direct {v0, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v12

    const/4 v0, 0x3

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "3FFFFFFFFFFFFFFFFFFFFFFB981960435FE5AB64236EF"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v3, "40000000000000000000000069A779CAC1DABC6788F7474F"

    invoke-direct {v0, v3, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v0, v2, v13

    const/4 v0, 0x5

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "1000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "800000000000000000000000000000006759213AF182E987D3E17714907D470D"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    const/4 v0, 0x7

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC079C2F3825DA70D390FBBA588D4604022B7B7"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    const/16 v0, 0x8

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "40000000000000000000000000000000000000000000009C300B75A3FA824F22428FD28CE8812245EF44049B2D49"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    const/16 v0, 0x9

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA3175458009A8C0A724F02F81AA8A1FCBAF80D90C7A95110504CF"

    invoke-direct {v3, v4, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v0

    move v0, v7

    :goto_299
    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    array-length v3, v3

    if-lt v0, v3, :cond_2a4

    :goto_29e
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    array-length v0, v0

    if-lt v7, v0, :cond_2b6

    return-void

    :cond_2a4
    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    aget-object v5, v8, v0

    aget-object v6, v1, v0

    aget-object v9, v2, v0

    invoke-direct {v4, v5, v6, v9}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_299

    :cond_2b6
    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_29e
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByOID(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oidBase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->params:[Lorg/bouncycastle/crypto/params/ECDomainParameters;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static getOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    sget-object v0, Lorg/bouncycastle/asn1/ua/DSTU4145NamedCurves;->oids:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
