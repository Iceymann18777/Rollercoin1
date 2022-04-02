.class public Lcom/android/volley/VolleyError;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final networkResponse:Lcom/android/volley/NetworkResponse;

.field private networkTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    return-void
.end method


# virtual methods
.method setNetworkTimeMs(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/android/volley/VolleyError;->networkTimeMs:J

    return-void
.end method
