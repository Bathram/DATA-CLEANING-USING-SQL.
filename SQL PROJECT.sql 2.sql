SELECT *
FROM NashvilleHousing

----Standardise Date format
SELECT Saledate, Convert(Date, Saledate) Date
FROM NashvilleHousing

Update NashvilleHousing
SET SaleDate = CONVERT(Date, Saledate)

ALTER TABLE  NashvilleHousing
ADD SaleDateConverted  Date


UPDATE NashvilleHousing
SET SaleDateConverted =CONVERT (Date, SaleDate)


Select Distinct(SoldAsVacant), count(SoldASVacant)
FROM NashvilleHousing
GROUP BY SoldAsVacant
ORDER BY 2

SELECT SoldASVacant,
CASE
 WHEN SoldASVacant ='y'THEN 'yes'
 ELSE 'NO'
 END AS SOldASvacant@
FROM Nashvillehousing



