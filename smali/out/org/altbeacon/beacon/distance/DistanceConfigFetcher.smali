.class public Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;
.super Ljava/lang/Object;
.source "DistanceConfigFetcher.java"


# instance fields
.field protected mException:Ljava/lang/Exception;

.field protected mResponse:Ljava/lang/String;

.field private mResponseCode:I

.field private mUrlString:Ljava/lang/String;

.field private mUserAgentString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    .line 25
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUserAgentString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 39
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 31
    iget v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public request()V
    .registers 12

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :cond_d
    const/4 v6, 0x1

    const-string v7, "DistanceConfigFetcher"

    if-eqz v4, :cond_2a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    iget-object v8, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    aput-object v8, v1, v3

    const-string v8, "Location"

    .line 52
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6

    const-string v9, "Following redirect from %s to %s"

    .line 51
    invoke-static {v7, v9, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    const/4 v8, -0x1

    .line 56
    iput v8, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    .line 59
    :try_start_2f
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_44

    :catch_35
    move-exception v8

    new-array v9, v6, [Ljava/lang/Object;

    .line 61
    iget-object v10, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUrlString:Ljava/lang/String;

    aput-object v10, v9, v3

    const-string v10, "Can\'t construct URL from: %s"

    invoke-static {v7, v10, v9}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iput-object v8, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    move-object v8, v0

    :goto_44
    if-nez v8, :cond_4e

    new-array v6, v3, [Ljava/lang/Object;

    const-string v8, "URL is null.  Cannot make request"

    .line 66
    invoke-static {v7, v8, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a0

    .line 69
    :cond_4e
    :try_start_4e
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_54} :catch_93
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_54} :catch_86
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_54} :catch_79

    :try_start_54
    const-string v5, "User-Agent"

    .line 70
    iget-object v9, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mUserAgentString:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    const-string v5, "response code is %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v7, v5, v6}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_72
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_72} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_72} :catch_75
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_72} :catch_73

    goto :goto_9f

    :catch_73
    move-exception v5

    goto :goto_7c

    :catch_75
    move-exception v5

    goto :goto_89

    :catch_77
    move-exception v5

    goto :goto_96

    :catch_79
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    :goto_7c
    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "Can\'t reach server"

    .line 80
    invoke-static {v5, v7, v9, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iput-object v5, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto :goto_9f

    :catch_86
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    :goto_89
    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "No data exists at \"+urlString"

    .line 77
    invoke-static {v5, v7, v9, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-object v5, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    goto :goto_9f

    :catch_93
    move-exception v6

    move-object v8, v5

    move-object v5, v6

    :goto_96
    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "Can\'t reach sever.  Have you added android.permission.INTERNET to your manifest?"

    .line 74
    invoke-static {v5, v7, v9, v6}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-object v5, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    :goto_9f
    move-object v5, v8

    :goto_a0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_b2

    .line 85
    iget v6, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponseCode:I

    const/16 v8, 0x12e

    if-eq v6, v8, :cond_d

    const/16 v8, 0x12d

    if-eq v6, v8, :cond_d

    const/16 v8, 0x12f

    if-eq v6, v8, :cond_d

    .line 90
    :cond_b2
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_e2

    .line 92
    :try_start_b6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 94
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    :goto_c4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 99
    :cond_ce
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mResponse:Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d7} :catch_d8

    goto :goto_e2

    :catch_d8
    move-exception v0

    .line 102
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->mException:Ljava/lang/Exception;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "error reading beacon data"

    .line 103
    invoke-static {v0, v7, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e2
    :goto_e2
    return-void
.end method
