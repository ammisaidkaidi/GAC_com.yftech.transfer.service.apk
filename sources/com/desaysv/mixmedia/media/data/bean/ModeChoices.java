package com.desaysv.mixmedia.media.data.bean;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ModeChoices.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/desaysv/mixmedia/media/data/bean/ModeChoices;", "", "groupList", "", "Lcom/desaysv/mixmedia/media/data/bean/ModeChoices$Group;", "(Ljava/util/List;)V", "getGroupList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Choice", "Group", "lib-mutimedia-support_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: /home/user/work/dex/classes.dex */
public final /* data */ class ModeChoices {

    @NotNull
    private final List<Group> groupList;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ModeChoices copy$default(ModeChoices modeChoices, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = modeChoices.groupList;
        }
        return modeChoices.copy(list);
    }

    @NotNull
    public final List<Group> component1() {
        return this.groupList;
    }

    @NotNull
    public final ModeChoices copy(@NotNull List<Group> groupList) {
        Intrinsics.checkNotNullParameter(groupList, "groupList");
        return new ModeChoices(groupList);
    }

    public boolean equals(@Nullable Object other) {
        if (this != other) {
            return (other instanceof ModeChoices) && Intrinsics.areEqual(this.groupList, ((ModeChoices) other).groupList);
        }
        return true;
    }

    public int hashCode() {
        List<Group> list = this.groupList;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "ModeChoices(groupList=" + this.groupList + ")";
    }

    /* compiled from: ModeChoices.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/desaysv/mixmedia/media/data/bean/ModeChoices$Group;", "", "groupName", "", "list", "", "Lcom/desaysv/mixmedia/media/data/bean/ModeChoices$Choice;", "(Ljava/lang/String;Ljava/util/List;)V", "getGroupName", "()Ljava/lang/String;", "getList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "lib-mutimedia-support_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final /* data */ class Group {

        @NotNull
        private final String groupName;

        @NotNull
        private final List<Choice> list;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Group copy$default(Group group, String str, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                str = group.groupName;
            }
            if ((i & 2) != 0) {
                list = group.list;
            }
            return group.copy(str, list);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getGroupName() {
            return this.groupName;
        }

        @NotNull
        public final List<Choice> component2() {
            return this.list;
        }

        @NotNull
        public final Group copy(@NotNull String groupName, @NotNull List<Choice> list) {
            Intrinsics.checkNotNullParameter(groupName, "groupName");
            Intrinsics.checkNotNullParameter(list, "list");
            return new Group(groupName, list);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Group)) {
                return false;
            }
            Group group = (Group) other;
            return Intrinsics.areEqual(this.groupName, group.groupName) && Intrinsics.areEqual(this.list, group.list);
        }

        public int hashCode() {
            String str = this.groupName;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            List<Choice> list = this.list;
            return hashCode + (list != null ? list.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "Group(groupName=" + this.groupName + ", list=" + this.list + ")";
        }

        public Group(@NotNull String str, @NotNull List<Choice> list) {
            Intrinsics.checkNotNullParameter(str, "groupName");
            Intrinsics.checkNotNullParameter(list, "list");
            this.groupName = str;
            this.list = list;
        }

        @NotNull
        public final String getGroupName() {
            return this.groupName;
        }

        @NotNull
        public final List<Choice> getList() {
            return this.list;
        }
    }

    public ModeChoices(@NotNull List<Group> list) {
        Intrinsics.checkNotNullParameter(list, "groupList");
        this.groupList = list;
    }

    @NotNull
    public final List<Group> getGroupList() {
        return this.groupList;
    }

    /* compiled from: ModeChoices.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/desaysv/mixmedia/media/data/bean/ModeChoices$Choice;", "", "name", "", "value", "", "(Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getValue", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "lib-mutimedia-support_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final /* data */ class Choice {

        @NotNull
        private final String name;
        private final int value;

        public static /* synthetic */ Choice copy$default(Choice choice, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = choice.name;
            }
            if ((i2 & 2) != 0) {
                i = choice.value;
            }
            return choice.copy(str, i);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* renamed from: component2, reason: from getter */
        public final int getValue() {
            return this.value;
        }

        @NotNull
        public final Choice copy(@NotNull String name, int value) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Choice(name, value);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Choice)) {
                return false;
            }
            Choice choice = (Choice) other;
            return Intrinsics.areEqual(this.name, choice.name) && this.value == choice.value;
        }

        public int hashCode() {
            String str = this.name;
            return ((str != null ? str.hashCode() : 0) * 31) + this.value;
        }

        @NotNull
        public String toString() {
            return "Choice(name=" + this.name + ", value=" + this.value + ")";
        }

        public Choice(@NotNull String str, int i) {
            Intrinsics.checkNotNullParameter(str, "name");
            this.name = str;
            this.value = i;
        }

        public /* synthetic */ Choice(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i);
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public final int getValue() {
            return this.value;
        }
    }
}
