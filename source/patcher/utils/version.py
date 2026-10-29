import re

try:
    from packaging.version import Version
except ImportError:
    class Version:
        """Lightweight semver fallback when packaging is not installed."""
        def __init__(self, v_str):
            self.raw = str(v_str).strip()
            nums = re.findall(r"\d+", self.raw)
            self._parts = tuple(int(x) for x in nums) if nums else (0,)

        def _cmp_tuple(self, other):
            if not isinstance(other, Version):
                other = Version(other)
            max_len = max(len(self._parts), len(other._parts))
            p1 = self._parts + (0,) * (max_len - len(self._parts))
            p2 = other._parts + (0,) * (max_len - len(other._parts))
            return p1, p2

        def __eq__(self, other):
            p1, p2 = self._cmp_tuple(other)
            return p1 == p2

        def __lt__(self, other):
            p1, p2 = self._cmp_tuple(other)
            return p1 < p2

        def __le__(self, other):
            p1, p2 = self._cmp_tuple(other)
            return p1 <= p2

        def __gt__(self, other):
            p1, p2 = self._cmp_tuple(other)
            return p1 > p2

        def __ge__(self, other):
            p1, p2 = self._cmp_tuple(other)
            return p1 >= p2

        def __str__(self):
            return self.raw

        def __repr__(self):
            return f"<Version({self.raw!r})>"
