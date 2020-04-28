.class public Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "OpNotificationIconContainer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIconPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getMaxDots()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getMaxDotsForNotificationIconContainer(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected initDimensInternal()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_notification_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->mIconPadding:I

    return-void
.end method

.method protected setOverflowWidth(III)I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->getMaxDots()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationIconContainer;->getMaxDots()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/2addr p2, p3

    mul-int/2addr p0, p2

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
