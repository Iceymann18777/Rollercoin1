.class Lcom/mopub/nativeads/NativeVideoController$2;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoController;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$2;->this$0:Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 437
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
