.class public Lcom/startapp/android/mediation/admob/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiffInYears(JJ)I
    .registers 6

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    invoke-static {v0, v1}, Lcom/startapp/android/mediation/admob/Utils;->getDiffInYears(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static getDiffInYears(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 5

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p0, p1

    if-ltz v2, :cond_24

    if-nez v2, :cond_26

    if-gez p0, :cond_26

    :cond_24
    add-int/lit8 v1, v1, -0x1

    :cond_26
    return v1
.end method
