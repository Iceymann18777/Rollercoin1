.class public Lcom/mopub/common/logging/MoPubDefaultLogger;
.super Ljava/lang/Object;
.source "MoPubDefaultLogger.java"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLogger;


# static fields
.field static MAX_MESSAGE_LENGTH_BYTES:I = 0xc00

.field private static final MESSAGE_FORMAT:Ljava/lang/String; = "[%s][%s] %s"

.field private static final MESSAGE_WITH_ID_FORMAT:Ljava/lang/String; = "[%s][%s][%s] %s"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    if-nez p0, :cond_6

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    .line 59
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/mopub/common/logging/MoPubDefaultLogger;->MAX_MESSAGE_LENGTH_BYTES:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 60
    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    .line 62
    sget v3, Lcom/mopub/common/logging/MoPubDefaultLogger;->MAX_MESSAGE_LENGTH_BYTES:I

    mul-int v4, v2, v3

    add-int/lit8 v5, v2, 0x1

    mul-int v3, v3, v5

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 62
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v5

    goto :goto_11

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 43
    invoke-static {p4}, Lcom/mopub/common/logging/MoPubDefaultLogger;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_3b

    aget-object v3, p4, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "MoPub"

    const/4 v7, 0x1

    if-nez p3, :cond_24

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v7

    aput-object v3, v4, v5

    const-string v3, "[%s][%s] %s"

    .line 45
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_24
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v1

    aput-object p2, v8, v7

    aput-object p3, v8, v5

    aput-object v3, v8, v4

    const-string v3, "[%s][%s][%s] %s"

    .line 48
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3b
    return-void
.end method
