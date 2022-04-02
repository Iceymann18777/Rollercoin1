.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioConfigurationTuple"
.end annotation


# instance fields
.field public final channelCount:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleRate:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2715
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    .line 2716
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    .line 2717
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 2725
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 2728
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 2729
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v2, v3, :cond_2b

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2730
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 2735
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2736
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2737
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method
