.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzuo:Lcom/google/android/gms/internal/ads/zzlx;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzlx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    return-object p0
.end method


# virtual methods
.method public final addCategoryExclusion(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzai(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addCustomTargeting(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object p0
.end method

.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzac(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlx;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzad(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/zza;)V

    return-object v0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 7

    const-string v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-gt v0, v3, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Content URL must not exceed %d in length.  Provided length was %d."

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzaf(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzt(I)V

    return-object p0
.end method

.method public final setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzk(Z)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->setManualImpressionsEnabled(Z)V

    return-object p0
.end method

.method public final setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzag(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzah(Ljava/lang/String;)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zzuo:Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlx;->zzj(Z)V

    return-object p0
.end method
