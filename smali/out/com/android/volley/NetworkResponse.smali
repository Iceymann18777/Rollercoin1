.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final data:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final networkTimeMs:J

.field public final notModified:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 42
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 43
    iput-object p3, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    iput-boolean p4, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 45
    iput-wide p5, p0, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method
