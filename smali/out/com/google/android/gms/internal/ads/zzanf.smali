.class public final Lcom/google/android/gms/internal/ads/zzanf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamx;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcpq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzcpq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzcz(Ljava/lang/String;)V
    .registers 8

    const-string v0, "Error while pinging URL: "

    const-string v1, ". "

    :try_start_4
    const-string v2, "Pinging URL: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_15
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_29} :catch_c8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_29} :catch_79

    :try_start_29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzanf;->zzcpq:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzamu;->zza(ZLjava/net/HttpURLConnection;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzamy;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0xc8

    if-lt v4, v3, :cond_4a

    const/16 v3, 0x12c

    if-lt v4, v3, :cond_70

    :cond_4a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received non-success response code "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from pinging URL: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_29 .. :try_end_70} :catchall_74

    :cond_70
    :try_start_70
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_74
    move-exception v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_70 .. :try_end_79} :catch_c8
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_79} :catch_aa
    .catch Ljava/lang/RuntimeException; {:try_start_70 .. :try_end_79} :catch_79

    :catch_79
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    return-void

    :catch_aa
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_96

    :catch_c8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error while parsing ping URL: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a6
.end method
