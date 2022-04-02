.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "TextTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final hasCaptionRoleFlags:Z

.field private final hasPreferredIsForcedFlag:Z

.field private final isDefault:Z

.field public final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final preferredLanguageScore:I

.field private final preferredRoleFlagsScore:I

.field private final selectedAudioLanguageScore:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .registers 9

    .line 2764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2766
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    .line 2767
    iget p3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 2769
    :goto_19
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_21

    const/4 p3, 0x1

    goto :goto_22

    :cond_21
    const/4 p3, 0x0

    .line 2771
    :goto_22
    iget-object v1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 2772
    invoke-static {p1, v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    .line 2774
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextRoleFlags:I

    and-int/2addr v1, v3

    .line 2775
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    .line 2776
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_40

    :cond_3f
    const/4 v1, 0x0

    :goto_40
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    .line 2781
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-lez v1, :cond_48

    if-eqz p3, :cond_4e

    :cond_48
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-nez v1, :cond_50

    if-eqz p3, :cond_50

    :cond_4e
    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasPreferredIsForcedFlag:Z

    .line 2784
    invoke-static {p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5b

    const/4 v1, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    .line 2786
    :goto_5c
    invoke-static {p1, p4, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    .line 2787
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-gtz p1, :cond_78

    iget-object p1, p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    if-nez p1, :cond_6e

    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    if-gtz p1, :cond_78

    :cond_6e
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    if-nez p1, :cond_78

    if-eqz p3, :cond_79

    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    if-lez p1, :cond_79

    :cond_78
    const/4 v0, 0x1

    :cond_79
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinConstraints:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I
    .registers 7

    .line 2803
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isWithinRendererCapabilities:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_d

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, -0x1

    :goto_c
    return v2

    .line 2806
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredLanguageScore:I

    if-eq v0, v1, :cond_18

    .line 2807
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2809
    :cond_18
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    iget v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->preferredRoleFlagsScore:I

    if-eq v0, v1, :cond_23

    .line 2810
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    .line 2812
    :cond_23
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    iget-boolean v4, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->isDefault:Z

    if-eq v1, v4, :cond_2e

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, -0x1

    :goto_2d
    return v2

    .line 2815
    :cond_2e
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasPreferredIsForcedFlag:Z

    iget-boolean v4, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasPreferredIsForcedFlag:Z

    if-eq v1, v4, :cond_39

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, -0x1

    :goto_38
    return v2

    .line 2818
    :cond_39
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    iget v4, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->selectedAudioLanguageScore:I

    if-eq v1, v4, :cond_44

    .line 2819
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$300(II)I

    move-result p1

    return p1

    :cond_44
    if-nez v0, :cond_50

    .line 2821
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->hasCaptionRoleFlags:Z

    if-eq v0, p1, :cond_50

    if-eqz v0, :cond_4f

    const/4 v2, -0x1

    :cond_4f
    return v2

    :cond_50
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 2744
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;->compareTo(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TextTrackScore;)I

    move-result p1

    return p1
.end method
