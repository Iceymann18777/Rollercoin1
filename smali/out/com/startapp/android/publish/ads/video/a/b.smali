.class public Lcom/startapp/android/publish/ads/video/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:[Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

.field private b:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/startapp/android/publish/ads/video/c/a/a;


# direct methods
.method public constructor <init>([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;Ljava/lang/String;I)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->e:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a/b;->a:[Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    .line 40
    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/a/b;->b:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    .line 41
    iput-object p3, p0, Lcom/startapp/android/publish/ads/video/a/b;->c:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/startapp/android/publish/ads/video/a/b;->d:I

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .registers 11

    .line 142
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    .line 143
    rem-long v4, v0, v2

    const-wide/16 v6, 0xe10

    .line 144
    div-long v8, v0, v6

    .line 145
    rem-long/2addr v0, v6

    div-long/2addr v0, v2

    .line 146
    rem-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    .line 147
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    const-string v0, "%02d:%02d:%02d.%03d"

    invoke-static {p0, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/a/b;->b(Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getTrackingUrl()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getInternalTrackingParamsIndicator()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 93
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/common/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;
    .registers 5

    .line 101
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getTrackingSource()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink$TrackingSource;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/a/b;->b:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    if-eqz v0, :cond_e

    sget-object v2, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink$TrackingSource;->STARTAPP:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink$TrackingSource;

    if-ne v0, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 103
    :goto_f
    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->setInternalTrackingParamsIndicator(Z)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->shouldAppendReplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->setShouldAppendOffset(Z)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getReplayParameter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->setReplayParameter(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    const-string v1, "[ASSETURI]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->d:I

    .line 121
    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CONTENTPLAYHEAD]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {}, Lcom/startapp/android/publish/ads/video/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CACHEBUSTING]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {}, Lcom/startapp/android/publish/ads/video/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[TIMESTAMP]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->f:Lcom/startapp/android/publish/ads/video/c/a/a;

    if-eqz v0, :cond_4f

    .line 126
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/c/a/a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ERRORCODE]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_4f
    return-object p1
.end method

.method private b()Z
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->a:[Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/a/b;->b:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static c()Ljava/lang/String;
    .registers 2

    .line 134
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v1, 0x55d4a80

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    const v1, 0x989680

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 4

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/ads/video/a/a;
    .registers 11

    .line 59
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/a/b;->b()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "VideoEventBuilder"

    if-nez v0, :cond_10

    const-string v0, "Some fields have illegal values"

    .line 60
    invoke-static {v2, v1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/a/b;->a:[Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v4, :cond_66

    aget-object v6, v3, v5

    .line 66
    invoke-virtual {v6}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getTrackingUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_39

    const/4 v7, 0x5

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring tracking link - tracking url is null: tracking link = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v7, v6}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_63

    .line 68
    :cond_39
    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/a/b;->b:Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;->getOffset()I

    move-result v7

    if-lez v7, :cond_5c

    invoke-virtual {v6}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->shouldAppendReplay()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring tracking link - external replay event: tracking link = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_63

    .line 71
    :cond_5c
    invoke-direct {p0, v6}, Lcom/startapp/android/publish/ads/video/a/b;->a(Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 75
    :cond_66
    new-instance v1, Lcom/startapp/android/publish/ads/video/a/a;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/a/b;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/startapp/android/publish/ads/video/a/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/startapp/android/publish/ads/video/c/a/a;)Lcom/startapp/android/publish/ads/video/a/b;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a/b;->f:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/a/b;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a/b;->e:Ljava/lang/String;

    return-object p0
.end method
