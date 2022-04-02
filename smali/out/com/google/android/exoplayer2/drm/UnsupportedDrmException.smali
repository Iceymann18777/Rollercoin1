.class public final Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    return-void
.end method
