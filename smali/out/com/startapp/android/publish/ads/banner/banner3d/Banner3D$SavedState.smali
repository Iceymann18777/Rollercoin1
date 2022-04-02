.class Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

.field public bDefaultLoad:Z

.field public bIsVisible:Z

.field private currentImage:I

.field private details:[Lcom/startapp/android/publish/common/model/AdDetails;

.field public faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

.field private firstRotation:I

.field private firstRotationFinished:I

.field public loaded:Z

.field public loading:Z

.field public options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

.field public overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

.field private rotation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1020
    new-instance v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState$1;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState$1;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 920
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_90

    .line 924
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->currentImage:I

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->rotation:F

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotationFinished:I

    .line 930
    const-class v0, Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 932
    array-length v3, v0

    new-array v3, v3, [Lcom/startapp/android/publish/common/model/AdDetails;

    iput-object v3, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/common/model/AdDetails;

    .line 933
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 937
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loaded:Z

    if-ne v0, v2, :cond_44

    .line 939
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 942
    :cond_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 943
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loading:Z

    if-ne v0, v2, :cond_4e

    .line 945
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 948
    :cond_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 949
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    if-ne v0, v2, :cond_58

    .line 951
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    .line 956
    :cond_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_77

    .line 958
    new-array v2, v0, [Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    iput-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    :goto_62
    if-ge v1, v0, :cond_77

    .line 961
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    const-class v3, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 965
    :cond_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/adinformation/c;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/banner/BannerOptions;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/adsCommon/a/f;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    goto :goto_92

    .line 970
    :cond_90
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    :goto_92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$1;)V
    .registers 3

    .line 854
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 872
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentImage()I
    .registers 2

    .line 880
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->currentImage:I

    return v0
.end method

.method public getDetails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .registers 2

    .line 888
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->rotation:F

    return v0
.end method

.method public isFirstRotation()Z
    .registers 3

    .line 892
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isFirstRotationFinished()Z
    .registers 3

    .line 900
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotationFinished:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setCurrentImage(I)V
    .registers 2

    .line 876
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->currentImage:I

    return-void
.end method

.method public setDetails(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 908
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/startapp/android/publish/common/model/AdDetails;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/common/model/AdDetails;

    const/4 v0, 0x0

    .line 910
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 911
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/common/model/AdDetails;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-void
.end method

.method public setFirstRotation(Z)V
    .registers 2

    .line 896
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    return-void
.end method

.method public setFirstRotationFinished(Z)V
    .registers 2

    .line 904
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotationFinished:I

    return-void
.end method

.method public setRotation(F)V
    .registers 2

    .line 884
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->rotation:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 976
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 979
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bIsVisible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 980
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5a

    :cond_c
    const/4 v0, 0x1

    .line 982
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->currentImage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->rotation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 985
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->firstRotationFinished:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 987
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->details:[Lcom/startapp/android/publish/common/model/AdDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 990
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loaded:Z

    .line 993
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->loading:Z

    .line 999
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1002
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->bDefaultLoad:Z

    .line 1005
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    :goto_3e
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->faces:[Lcom/startapp/android/publish/ads/banner/banner3d/Banner3DFace;

    array-length v2, v0

    if-ge v1, v2, :cond_4b

    .line 1011
    aget-object v0, v0, v1

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1014
    :cond_4b
    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->overrides:Lcom/startapp/android/publish/adsCommon/adinformation/c;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1015
    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1016
    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/banner3d/Banner3D$SavedState;->adRulesResult:Lcom/startapp/android/publish/adsCommon/a/f;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :goto_5a
    return-void
.end method
