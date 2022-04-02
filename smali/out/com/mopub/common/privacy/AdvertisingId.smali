.class public Lcom/mopub/common/privacy/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ONE_DAY_MS:J = 0x5265c00L

.field private static final PREFIX_IFA:Ljava/lang/String; = "ifa:"

.field private static final PREFIX_MOPUB:Ljava/lang/String; = "mopub:"


# instance fields
.field final mAdvertisingId:Ljava/lang/String;

.field final mDoNotTrack:Z

.field final mLastRotation:Ljava/util/Calendar;

.field final mMopubId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    .line 57
    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method static generateExpiredAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;
    .registers 10

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateIdString()Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v7, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    sub-long v8, v0, v4

    const-string v2, ""

    const/4 v4, 0x0

    move-object v1, v7

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v7
.end method

.method static generateFreshAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;
    .registers 8

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateIdString()Ljava/lang/String;

    move-result-object v3

    .line 111
    new-instance v7, Lcom/mopub/common/privacy/AdvertisingId;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v2, ""

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v7
.end method

.method static generateIdString()Ljava/lang/String;
    .registers 1

    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 140
    :cond_4
    instance-of v0, p1, Lcom/mopub/common/privacy/AdvertisingId;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 142
    :cond_a
    check-cast p1, Lcom/mopub/common/privacy/AdvertisingId;

    .line 144
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    iget-boolean v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-eq v0, v2, :cond_13

    return v1

    .line 145
    :cond_13
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 146
    :cond_1e
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIdWithPrefix(Z)Ljava/lang/String;
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-nez v0, :cond_23

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_23

    .line 77
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ifa:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_23
    :goto_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mopub:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdentifier(Z)Ljava/lang/String;
    .registers 3

    .line 65
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-nez v0, :cond_a

    if-nez p1, :cond_7

    goto :goto_a

    :cond_7
    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    goto :goto_c

    :cond_a
    :goto_a
    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    :goto_c
    return-object p1
.end method

.method getIfaWithPrefix()Ljava/lang/String;
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 90
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget-boolean v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDoNotTrack()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    return v0
.end method

.method isRotationRequired()Z
    .registers 6

    const-string v0, "GMT"

    .line 120
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 121
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x6

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v3, v2, :cond_33

    .line 124
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v1, v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :cond_33
    :goto_33
    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingId{mLastRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdvertisingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMopubId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDoNotTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
