.class Lcom/onesignal/OSInAppMessageRedisplayStats;
.super Ljava/lang/Object;
.source "OSInAppMessageRedisplayStats.java"


# instance fields
.field private displayDelay:J

.field private displayLimit:I

.field private displayQuantity:I

.field private lastDisplayTime:J

.field private redisplayEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    return-void
.end method

.method constructor <init>(IJ)V
    .registers 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 26
    iput p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    .line 27
    iput-wide p2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    .line 20
    iput-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    const-string v0, "limit"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "delay"

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 36
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    .line 38
    :cond_2d
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3a

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    goto :goto_47

    .line 40
    :cond_3a
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_47

    .line 41
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method getDisplayQuantity()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    return v0
.end method

.method getLastDisplayTime()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    return-wide v0
.end method

.method incrementDisplayQuantity()V
    .registers 2

    .line 58
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    return-void
.end method

.method isDelayTimeSatisfied()Z
    .registers 10

    .line 90
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_a

    return v2

    .line 93
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 95
    iget-wide v3, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    sub-long v3, v0, v3

    .line 96
    sget-object v5, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OSInAppMessage lastDisplayTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " currentTimeInSeconds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " diffInSeconds: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " displayDelay: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 98
    iget-wide v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    cmp-long v5, v3, v0

    if-ltz v5, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    return v2
.end method

.method public isRedisplayEnabled()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->redisplayEnabled:Z

    return v0
.end method

.method setDisplayQuantity(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    return-void
.end method

.method setDisplayStats(Lcom/onesignal/OSInAppMessageRedisplayStats;)V
    .registers 4

    .line 45
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getLastDisplayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setLastDisplayTime(J)V

    .line 46
    invoke-virtual {p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->getDisplayQuantity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onesignal/OSInAppMessageRedisplayStats;->setDisplayQuantity(I)V

    return-void
.end method

.method setLastDisplayTime(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    return-void
.end method

.method shouldDisplayAgain()Z
    .registers 3

    .line 86
    iget v0, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSInAppMessageDisplayStats{lastDisplayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->lastDisplayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", displayQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayQuantity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onesignal/OSInAppMessageRedisplayStats;->displayDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
