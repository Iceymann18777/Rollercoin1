.class public Lcom/startapp/android/publish/ads/list3d/ListItem;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/startapp/android/publish/ads/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Long;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 218
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/ListItem$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/list3d/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    const/4 v3, 0x0

    .line 25
    iput-object v3, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v3, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3d

    .line 57
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    .line 60
    :cond_3d
    iput-object v3, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    .line 62
    :goto_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_84

    .line 74
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    goto :goto_86

    .line 76
    :cond_84
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    .line 78
    :goto_86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8f

    .line 80
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    goto :goto_91

    .line 82
    :cond_8f
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    .line 85
    :goto_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->o:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->n:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->p:Ljava/lang/Long;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_b9

    .line 91
    iput-object v3, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->p:Ljava/lang/Long;

    .line 93
    :cond_b9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_c2

    .line 95
    iput-object v3, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    goto :goto_cb

    :cond_c2
    if-ne p1, v2, :cond_c5

    const/4 v1, 0x1

    .line 97
    :cond_c5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    :goto_cb
    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/common/model/AdDetails;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getAdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingClickUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTrackingCloseUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getRating()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    .line 44
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->isSmartRedirect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    .line 45
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->isStartappBrowserEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    .line 46
    iput-object v1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getTemplate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getIntentDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->n:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getIntentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->o:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->getDelayImpressionInSeconds()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->p:Ljava/lang/Long;

    .line 51
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdDetails;->shouldSendRedirectHops()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    return v0
.end method

.method public l()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->o:Ljava/lang/String;

    return-object v0
.end method

.method public q()Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public r()Ljava/lang/Long;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->p:Ljava/lang/Long;

    return-object v0
.end method

.method public s()Ljava/lang/Boolean;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 176
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 177
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 179
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 181
    :cond_19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    :goto_1c
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->j:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 194
    iget-boolean p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->k:Z

    .line 197
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->l:Z

    .line 202
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->p:Ljava/lang/Long;

    if-nez p2, :cond_71

    const-wide/16 v3, -0x1

    .line 207
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_78

    .line 209
    :cond_71
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 211
    :goto_78
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/ListItem;->q:Ljava/lang/Boolean;

    if-nez p2, :cond_80

    .line 212
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 214
    :cond_80
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_87

    goto :goto_88

    :cond_87
    const/4 v1, -0x1

    :goto_88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8b
    return-void
.end method
